import { reqGetSearchInfo } from "@/api";
// search模块的小仓库
const state = {
    searchList:{}
};
const mutations = {
    GETSEARCHLIST(state,searchList){
        state.searchList=searchList
    }
};
const actions = {
    // 获取search数据
    async getSearchList({commit},params = {}){
        // 第二个参数是用户派发actions的时候传递过来的，至少是一个空对象
        let result = await reqGetSearchInfo(params)
        if(result.code==200){
            commit('GETSEARCHLIST',result.data)
        }
    }
};
// 计算属性：为了简化仓库中的数据而生
// 可以把我们将来在组件当中需要的数据简化一下【将来组件在获取数据的时候就方便了】
const getters = {
    // 当前形参state，当前仓库中的state，并非大仓库中的state
    goodsList(state){
        // 如果服务器数据回来了，是问题是一个数组
        // 假如网络不给力应该是一个undefined  (解决没网络报错的问题)
        return state.searchList.goodsList || []
    },
    trademarkList(state){
        return state.searchList.trademarkList || []
    },
    attrsList(state){
        return state.searchList.attrsList || []
    }
};
export default {
    state,
    mutations,
    actions,
    getters
}