<template>
  <div>
    <Header />
    <div class="content">
      <h1 style="text-align: center; margin: 20px 0">意见反馈</h1>
      <a-form :model="formState" v-bind="layout" name="nest-messages" :validate-messages="validateMessages" @finish="onFinish">
        <a-form-item :name="['feedback', 'title']" label="标题" :rules="[{ required: true }]">
          <a-input v-model:value="formState.feedback.title" placeholder="请输入标题" />
        </a-form-item>
        <a-form-item :name="['feedback', 'content']" label="内容" :rules="[{ required: true }]">
          <a-textarea v-model:value="formState.feedback.content" :rows="6" placeholder="详细描述您的问题或建议" />
        </a-form-item>
        <a-form-item :name="['feedback', 'name']" label="姓名" :rules="[{ required: true }]">
          <a-input v-model:value="formState.feedback.name" placeholder="请输入姓名" />
        </a-form-item>
        <a-form-item :name="['feedback', 'email']" label="Email" :rules="[{ type: 'email' }]">
          <a-input v-model:value="formState.feedback.email" placeholder="请输入邮箱" />
        </a-form-item>
        <a-form-item :name="['feedback', 'mobile']" label="手机号" :rules="[{ type: 'mobile' }]">
          <a-input v-model:value="formState.feedback.mobile" placeholder="请输入手机号" />
        </a-form-item>
        <a-form-item :wrapper-col="{ ...layout.wrapperCol, offset: 4 }">
          <a-button type="primary" html-type="submit" @click="clickCommit()">提交</a-button>
        </a-form-item>
      </a-form>
    </div>
  </div>
</template>

<script setup>
  import Header from '/@/views/index/components/header.vue';
  import { createApi } from '/@/api/index/feedback';
  import { useRoute, useRouter } from 'vue-router/dist/vue-router';
  const router = useRouter();
  const route = useRoute();

  onMounted(() => {});

  const layout = {
    labelCol: {
      span: 4,
    },
    wrapperCol: {
      span: 20,
    },
  };
  const validateMessages = {
    required: '${label} 不能为空!',
    types: {
      email: '${label} 无效!',
      number: '${label} 无效!',
    },
  };
  const formState = reactive({
    feedback: {
      name: '',
      email: '',
      title: '',
      content: '',
    },
  });
  const onFinish = (values) => {};
  const clickCommit = () => {
    console.log('Success:', formState.feedback);
    createApi({}, formState.feedback)
      .then((res) => {
        alert('提交成功');
        location.reload();
      })
      .catch((err) => {
        console.log(err);
      });
  };
</script>

<style scoped lang="less">
  .flex-view {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
  }

  .content {
    position: relative;
    margin: 80px auto 0;
    width: 90%;
    max-width: 800px;
    background: #fff;
    overflow: hidden;

    .title {
      color: #152844;
      font-weight: 500;
      font-size: 24px;
      line-height: 22px;
      height: 22px;
      text-align: center;
      margin-bottom: 11px;
    }

    .time-margin {
      margin: 11px 0 24px;
    }

    .text {
      height: 22px;
      line-height: 22px;
      font-size: 14px;
      text-align: center;
      color: #152844;
    }

    .time {
      color: #f62a2a;
    }

    .text {
      height: 22px;
      line-height: 22px;
      font-size: 14px;
      text-align: center;
      color: #152844;
    }

    .price {
      color: #ff8a00;
      font-weight: 500;
      font-size: 16px;
      height: 36px;
      line-height: 36px;
      text-align: center;

      .num {
        font-size: 28px;
      }
    }

    .pay-choose-view {
      margin-top: 24px;

      .choose-box {
        width: 140px;
        height: 126px;
        border: 1px solid #cedce4;
        border-radius: 4px;
        text-align: center;
        cursor: pointer;
      }

      .pay-choose-box {
        -webkit-box-pack: justify;
        -ms-flex-pack: justify;
        justify-content: space-between;
        max-width: 300px;
        margin: 0 auto;

        img {
          height: 40px;
          margin: 24px auto 16px;
          display: block;
        }
      }

      .tips {
        color: #6f6f6f;
        font-size: 14px;
        line-height: 22px;
        height: 22px;
        text-align: center;
        margin: 16px 0 24px;
      }

      .choose-box-active {
        border: 1px solid #4684e2;
      }

      .tips {
        color: #6f6f6f;
        font-size: 14px;
        line-height: 22px;
        height: 22px;
        text-align: center;
        margin: 16px 0 24px;
      }

      .pay-btn {
        cursor: pointer;
        background: #c3c9d5;
        border-radius: 32px;
        width: 104px;
        height: 32px;
        line-height: 32px;
        border: none;
        outline: none;
        font-size: 14px;
        color: #fff;
        text-align: center;
        display: block;
        margin: 0 auto;
      }

      .pay-btn-active {
        background: #4684e2;
      }
    }
  }
</style>
