<template>
  <div>
    <Header />
    <!-- 路由组件的出口 -->
    <router-view></router-view>
    <!-- Footer组件在登录和注册是不显示的，可以利用路由的元信息（meta）隐藏 -->
    <Footer v-show="$route.meta.show" />
  </div>
</template>

<script>
import Header from "./components/Header";
import Footer from "./components/Footer";
export default {
  name: "App",
  components: { Header, Footer },
  mounted() {
    // 通知vuex发请求，获取数据，存储与仓库当中
    this.$store.dispatch("categoryList");
  },
};
</script>

<style>
</style>