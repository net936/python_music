<template>
  <div class="user">
    <Header />

    <div class="user-content">
      <div class="user-content-left">
        <MineInfosView />
      </div>
      <div class="user-content-right">
        <router-view />
      </div>
    </div>

    <Footer />
  </div>
</template>
<script>
  import Header from '/@/views/index/components/header.vue';
  import Footer from '/@/views/index/components/footer.vue';
  import MineInfosView from '/@/views/index/user/mine-infos-view.vue';

  export default {
    components: {
      MineInfosView,
      Footer,
      Header,
    },
    data() {
      return {
        collapsed: false,
      };
    },
  };
</script>
<style scoped lang="less">
  // 兼容手机端
  @media screen and (max-width: 720px) {
    .user-content {
      width: 90% !important;
    }
    .user-content-left {
      width: 99% !important;
    }
  }

  .user {
    display: block;
  }

  .user-content {
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;
    width: 80%;
    margin: 80px auto;
    gap: 32px;
    .user-content-left {
      width: 25%;
    }
    .user-content-right {
      flex: 1;
      padding-right: 20px;
    }
  }
</style>
