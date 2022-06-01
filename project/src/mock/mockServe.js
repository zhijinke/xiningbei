// 先引入mockjs模块
import Mock from 'mockjs';
// 把json数据格式引进来{没有对外暴露，但是可以引入}
// webpack默认对外暴露的：图片，json格式
import banner from './banners.json'
import floor from './floors.json'

// Mock数据:第一个参数，请求地址。第二个参数，请求数据
Mock.mock("/mock/banner",{code:200,data:banner})
Mock.mock("/mock/floor",{code:200,data:floor})

