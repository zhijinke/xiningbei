import Vue from 'vue'
import App from './App.vue'
// 引入路由
import router from '@/router'
// 引入仓库
import store from './store'
// 三级联动组件。  ---全局组件
import TypeNav from '@/components/TypeNav'
import Carousel from '@/components/Carousel'
import pagination from '@/components/Pagination'
// 引入MockServe.js-----mock数据
import "@/mock/mockServe"
// // 引入swiper样式
import 'swiper/css/swiper.css'
// 第一个参数，全局组件的名字。第二个参数，哪一个组件
Vue.component(TypeNav.name,TypeNav)
Vue.component(Carousel.name,Carousel)
Vue.component(pagination.name,pagination)
Vue.config.productionTip = false

new Vue({
  render: h => h(App),
  // 全局事件总线$bus
  beforeCreate(){
    Vue.prototype.$bus = this
  },
  // 组成路由信息：这里书写router的时候，组件身上都拥有 $router,$route 属性
  router,
  // 注册仓库：组件身上都有 $store 属性
  store,
}).$mount('#app')
