import {reqGetCode,reqUserRegister,reqUserLogin,reqUserInfo} from '@/api/index';
// 登录与注册的模块
const state = {
    code:'',
    token:'',
    userInfo:{}
};
const mutations = {
    GETCODE(state,code){
        state.code = code
    },
    USERLOGIN(state,token){
        state.token=token
    },
    GETUSERINFO(state,userInfo){
        state.userInfo=userInfo
    }
};
const actions = {
    // 获取验证码
   async getCode({commit},phone){
        let result = await reqGetCode(phone)
        if(result.code==200){
            commit("GETCODE",result.data)
            return 'ok';
        }else{
            return Promise.reject(new Error('faile'))
        }
    },
    // 注册
    async userRegister({ commit }, user) {
        let result = await reqUserRegister(user);
        if (result.code == 200) {
          return "ok";
        } else {
          return Promise.reject(new Error("faile"));
        }
      },
    // 登录业务
   async userLogin({commit},data){
        let result = await reqUserLogin(data);
        // 服务器下发token，用户唯一标识
        // 将来经常带token找服务器要用户信息进行展示
        if(result.code==200){
            commit('USERLOGIN',result.data.token)
            return 'ok'  
        }else{
            return Promise.reject(new Error('faile'))
        }
    },
    // 用户信息
    async getUserInfo({commit}){
       let result = await reqUserInfo()
       if(result.code==200){
        //提交用户信息
            commit('GETUSERINFO',result.data)
            return 'ok'
       }else{
           return Promise.reject(new Error(result.message))
       }
    }
};
const getters = {};
export default{
    state,
    mutations,
    actions,
    getters
}