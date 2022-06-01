// 引入vuex
import Vue from "vue";
import Vuex from "vuex"
// 使用一次
Vue.use(Vuex);
// 引入小仓库
import home from "./home";
import search from "./search";
import detail from "./detail";
import shopcart from "./shopcart/shopcart";
import user from "./user/user";
// 对外暴露Store类的一个实例
export default new Vuex.Store({
    // 实现Vuex仓库模块式开发存储数据
    modules:{
        home,
        search,
        detail,
        shopcart,
        user
    }
})
