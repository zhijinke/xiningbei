<template>
  <div>
      <!-- 三级联动组件：已经注册为全局组件 不需要引入 -->
      <TypeNav/>
      <ListContainer/>
      <Recommend/>
      <Rank/>
      <Like/>
      <Floor v-for="(floor,index) in floorList" :key="floor.id" :list="floor" />
      <Brand/>

  </div>
</template>

<script>
import {mapState} from 'vuex'
// 引入组件
import ListContainer from '@/pages/Home/ListContainer'
import Recommend from '@/pages/Home/Recommend'
import Rank from '@/pages/Home/Rank'
import Like from '@/pages/Home/Like'
import Floor from '@/pages/Home/Floor'
import Brand from '@/pages/Home/Brand'

    export default {
        name:'',
        components:{
            ListContainer,
            Recommend,
            Rank,
            Like,
            Floor,
            Brand
        },
        computed:{
            ...mapState({
                floorList:state=>state.home.floorList
            })
        },
        mounted(){
            // 派发actions，获取floor数据
            this.$store.dispatch('getFloorList')
            // 拿到用户信息进行展示
            this.$store.dispatch('getUserInfo')
        }
    }
</script>

<style>

</style>