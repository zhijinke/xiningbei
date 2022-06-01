// 引入页面
import Home from '@/pages/Home'
import Login from '@/pages/Login'
import Register from '@/pages/Register'
import Search from '@/pages/Search'
import Detail from '@/pages/Detail'
import AddCartSuccess from '@/pages/AddCartSuccess'
import ShopCart from '@/pages/ShopCart'
// 配置路由信息
export default[
    {
        path:'/shopCart',
        component:ShopCart,
        meta:{show:true}
    },
    {
        path:'/addCartSuccess',
        component:AddCartSuccess,
        name:'addCartSuccess',
        meta:{show:true}
    },
    {
      path:'/detail/:skuid',
      component:Detail,
      meta:{show:true}
  },
  {
      path:'/home',
      component:Home,
      meta:{show:true}
  },
  {
      path:'/login',
      component:Login,
      meta:{show:false}
  },
  {
      path:'/register',
      component:Register,
      meta:{show:false}
  },
  {
      path: '/search/:keyword?',
      component:Search,
      meta:{show:true},
      name:"search"
  },

  // 重定向，用户访问定向到首页
  {
      path:'/',
      redirect:'/home'
  }
]