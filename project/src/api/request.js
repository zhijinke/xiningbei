// 对于axios进行二次封装
import axios from "axios";
// 引入进度条
import nprogress from "nprogress";
// 引入进度条样式
import 'nprogress/nprogress.css';
// 在当前模块引入store
import store from '@/store'
// 1. 利用axios对象的create方法，去创建一个axios实例
// 2. request 就是axios 只不过稍微配置一下

let requests = axios.create({
    // 配置对象
    // 基础路径，发送请求的时候，路径当中会出现api
    // baseURL:'/api',
    // 代表请求超时的时间5s
    timeout:5000
});
requests.defaults.baseURL = 'http://gmall-h5-api.atguigu.cn',

// 请求拦截器，在发送请求之前，请求拦截器可以检测到，可以再请求发出去之前做一些事情
requests.interceptors.request.use((config)=>{
    // config:配置对象，对象里面有一个属性很重要，headers请求头
    // 进度条开始动
    if(store.state.detail.uuid_token){
        // 请求头添加一个字段，和后台老师商量好了的
        config.headers.userTempId = store.state.detail.uuid_token;
    }
    nprogress.start();
    return config;
});

// 响应拦截器
requests.interceptors.response.use((res)=>{
    // 成功的回调函数：服务器相应数据回来以后，响应拦截器可以检测到，做一些事情
    // 进度条结束
    nprogress.done();
    return res.data;
},(error)=>{
    // 响应失败的回调函数
    alert("服务器响应数据失败");
})

// 进行对外暴露
export default requests;