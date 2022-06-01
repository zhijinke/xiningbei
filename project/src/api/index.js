// 当前这个模块，API进行统一管理
import requests from "./request";
import mockRequests from './mockAjax'

// 三级联动接口
// /api/product/getBaseCategoryList  get 无参数
// 发请求：axios发请求返回结果Promise对象
export const reqCategoryList = ()=>requests({url:'/api/product/getBaseCategoryList',method:'get'})

// 获取banner（home首页轮播图接口）
export const reqGetBannerList = ()=>mockRequests.get('/mock/banner')

// 获取floor数据
export const reqFloorList = ()=>mockRequests.get('/mock/floor')

// 获取搜索模块数据  地址：/api/list  请求方式：post   参数：需要参数
export const reqGetSearchInfo = (params)=>requests({url:"/api/list",method:"post",data:params})


// 获取产品详情信息的接口  地址：/api/item/{ skuId }  请求方式：GET   参数：skuId
export const reqGoodsInfo = (skuId)=>requests({url:`/api/item/${skuId}`,method:'get'})

// 将产品添加到购物车中（获取更新某一个产品的个数）
// /api/cart/addToCart/{ skuId }/{ skuNum }  POST
export const reqAddOrUpdateShopCart = (skuId,skuNum)=>requests({url:`/api/cart/addToCart/${ skuId }/${ skuNum }`,method:'post'})

// 获取购物车列表数据接口
// url:/api/cart/cartList   method: get
export const reqCartList = ()=>requests({url:'/api/cart/cartList',method:"get"})

// 删除购物车商品
// url：/api/cart/deleteCart/{skuId}   method：delete  参数：skuId
export const reqDeleteCartById = (skuId)=>requests({url:`/api/cart/deleteCart/${skuId}`,method:'delete'})

// 修改购物车中的勾中状态
// url：/api/cart/checkCart/{skuiD}/{isChecked}   method：get
export const reqUpdateCheckedByid = (skuId,isChecked)=>requests({url:`/api/cart/checkCart/${skuId}/${isChecked}`,method:'get'})

// 获取验证码  
// url：/api/user/passport/sendCode/{phone}    method：get   
export const reqGetCode = (phone)=>requests({url:`/api/user/passport/sendCode/${phone}`,method:'get'})

// 注册
// url：/api/user/passport/register    method：post     Phone code password
export const reqUserRegister = (data)=>requests({url:'/api/user/passport/register',data,method:'post'})  

// 登录
// url：/api/user/passport/login   method：post  Phone，passward
export const reqUserLogin = (data)=>requests({url:'/api/user/passport/login',data,method:'post'})

// 获取用户信息【需要带着用户的token向服务器要客户信息】
// url：/api/user/passport/auth/getUserInfo    method：get
export const reqUserInfo = ()=>requests({url:'/api/user/passport/auth/getUserInfo',method:'get'})