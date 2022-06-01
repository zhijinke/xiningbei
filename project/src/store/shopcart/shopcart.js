import { reqCartList,reqDeleteCartById ,reqUpdateCheckedByid} from "@/api";
const state = {
    cartList:[]
};
const mutations = {
    GETCARTLIST(state,cartList){
        state.cartList=cartList
    }
};
const actions = {
    // 获取购物车列表数据
   async getCartList({commit}){
       let result = await reqCartList()
    //    测试能否获取个人购物车数据
        if(result.code==200){
            commit("GETCARTLIST",result.data)
        }
    },
    // 删除购物车商品列表数据
    async deleteCartListBySkuId({commit},skuId){
        let result = await reqDeleteCartById(skuId)
        if(result.code==200){
            return 'ok'
        }else{
            return Promise.reject(new Error('faile'));
        }
    },
    // 修改购物车某一个选中产品的状态
   async uodateCheckedById({commit},{skuId,isChecked}){
       let result = await reqUpdateCheckedByid(skuId,isChecked)
       if(result.code==200){
           return 'ok'
       }else{
           return Promise.reject(new Error('faile'));
       }
    },
    // 删除全部勾选的产品
    deleteAllCheckedCart({dispatch,getters}){
        // context: 小仓库，commit（提交mutations修改state），getters（计算属性）dispath（派发actions）
        // 获取购物车中全部的产品（是一个数组）
        let PromiseAll = [];
        getters.cartList.cartInfoList.forEach(item => {
            let promise = item.isChecked==1?dispatch('deleteCartListBySkuId',item.skuId):'';
            // 将每一次返回的promise添加到数组当中
            PromiseAll.push(promise)
        });
        // 只要全部的p1\p2都成功，返回结果即为成功
        // 如果有一个失败，返回结果即为失败
        return Promise.all(PromiseAll)
    },
    // 修改全部产品的状态【全选按钮】
    updateAllCartIsChecked({dispatch,state},isChecked){
        // 数组
        let PromiseAll = [];
        state.cartList[0].cartInfoList.forEach(item=>{
            let promise = dispatch('uodateCheckedById',{skuId:item.skuId,isChecked})
            PromiseAll.push(promise)
        });
        // 最终返回的结果
        return Promise.all(PromiseAll)
    }
};
const getters = {
    cartList(state){
        return state.cartList[0]||{}
    }
};
export default {
    state,
    mutations,
    actions,
    getters
}