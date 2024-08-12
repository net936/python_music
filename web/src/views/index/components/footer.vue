<template>
  <div class="footer-view">
    <div class="foot-link-box flex-view">
      <a href="/index/feedback" class="foot-link" target="_blank">意见反馈</a>
      <div class="link-split"></div>
      <a href="/admin" class="foot-link" target="_blank">后台管理</a>
      <div class="link-split"></div>
      <a class="foot-link" @click="handleSource">关于我们</a>
    </div>
    <div class="address">2024-2025 © 管理系统演示 · All Rights Reserved</div>
  </div>
</template>

<script>
  import { Modal } from 'ant-design-vue';

  export default {
    name: 'Footer',
    data() {
      return {};
    },
    methods: {
      handleSource() {
        Modal.info({
          title: '欢迎体验',
          content: '使用过程中遇到问题，可以咨询作者：lengqin1024（微信）',
          onOk() {},
        });
      },
    },
  };
</script>

<style scoped lang="less">
  .flex-view {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
  }

  .footer-view {
    max-width: 1108px;
    margin: 0 auto;
    padding: 24px 0 24px;

    .foot-link-box {
      display: -webkit-box;
      display: -ms-flexbox;
      display: flex;
      -webkit-box-align: center;
      -ms-flex-align: center;
      align-items: center;
      overflow: hidden;
      margin: 24px auto 24px;
      -webkit-box-pack: center;
      -ms-flex-pack: center;
      justify-content: center;
      .foot-link {
        margin: 0 16px;
        color: #2a4f88;
      }
      a {
        background-color: transparent;
        text-decoration: none;
        color: var(--mid-blue);
      }
    }

    .footer-infos {
      height: 16px;
      line-height: 16px;
      font-size: 12px;
      padding-left: 63px;
      color: #aeaeae;
      margin-top: 16px;
      text-align: center;
    }
    .address {
      text-align: center;
      height: 16px;
      line-height: 16px;
      font-size: 12px;
      color: #aeaeae;
      margin-top: 8px;
    }
  }
</style>
