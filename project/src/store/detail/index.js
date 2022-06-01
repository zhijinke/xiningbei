import { reqGoodsInfo, reqAddOrUpdateShopCart } from "@/api";
// 封装游客身份模块uuid--------->生成一个随机字符串  [不能再变了]
import {getUUID} from '@/utils/uuid_token'
const state = {
    goodInfo: {},
    // 游客的临时身份
    uuid_token:getUUID(),
};

const mutations = {
    GETGOODINFO(state, goodInfo) {
        state.goodInfo = goodInfo
    }
};

const actions = {
    // 获取产品信息的actions
    async getGoodInfo({ commit }, skuId) {
        let result = await reqGoodsInfo(skuId)
        if (result.code == 200) {
            commit('GETGOODINFO', result.data)
        }
    },
    // 将产品添加到购物车中
    async addOrUpdateShopCart({ commit }, { skuId, skuNum }) {
        let result = await reqAddOrUpdateShopCart(skuId, skuNum)
        // 代表购物车加入成功
        if(result.code==200){
            return 'ok'
        }else{
            // 代表加入购物车失败
            return Promise.reject(new Error('faile'))
        }
    }
};

const getters = {
    categoryView(state) {
        return state.goodInfo.categoryView || {};
    },
    skuInfo(state) {
        return state.goodInfo.skuInfo || {};
    },
    spuSaleAttrList(state) {
        return state.goodInfo.spuSaleAttrList || [];
    }
};

export default {
    state,
    mutations,
    actions,
    getters
}