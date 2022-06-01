import {reqCategoryList,reqGetBannerList,reqFloorList} from '@/api'
// home模块的小仓库
const state = {
    // state中的默认值是根据接口返回值初始化的
    categoryList:[],
    // banner轮播图的数据
    bannerList:[],
    // floor数据
    floorList:[]
};
const mutations = {
    CATEGORYLIST(state,categoryList){
        state.categoryList = categoryList.slice(0,16)
    },
    GETBANNERLIST(state,bannerList){
        state.bannerList=bannerList
    },
    GETFLOORLIST(state,floorList){
        state.floorList=floorList
    }
};
const actions = {
    // 通过API里面的接口函数调用，向服务器发请求，获取服务器的数据
   async categoryList({commit}){
        let result = await reqCategoryList();
        if(result.code==200){
            commit('CATEGORYLIST',result.data)
        }
    },
    // 获取首页轮播图的数据
   async getBannerList({commit}){
       let result = await reqGetBannerList();
       if(result.data.code==200){
        commit('GETBANNERLIST',result.data.data)
       }
    },
    // 获取floor的数据
   async getFloorList({commit}){
        let result = await reqFloorList();
        if(result.data.code==200){
            commit('GETFLOORLIST',result.data.data)
        }
    }
};
// 计算属性
const getters = {};
export default {
    state,
    mutations,
    actions,
    getters
}