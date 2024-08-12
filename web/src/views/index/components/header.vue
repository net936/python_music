<template>
  <div class="hd">
    <div class="main-bar-view">
      <div class="logo">
        <img :src="logoImage" class="search-icon" @click="$router.push({ name: 'home' })" />
      </div>
      <div class="menu">
        <div :class="item.link === selectedMenu ? 'menu-item-selected' : 'menu-item'" v-for="item in menuData" @click="clickMenu(item)">{{
          item.title
        }}</div>
      </div>
      <div class="right-view">
        <div class="search-entry">
          <img :src="SearchIcon" class="search-icon" />
          <input placeholder="输入关键词" ref="keywordRef" @keyup.enter="search" />
        </div>
        <!--        <a id="admin-entry" href="/admin" target="__black" class="link">后台入口</a>-->
        <!--        <a class="link" @click="handleJoin()">音乐入驻</a>-->
        <template v-if="userStore.user_token">
          <a-dropdown>
            <a class="ant-dropdown-link" @click="(e) => e.preventDefault()">
              <img :src="avatarUrl ? avatarUrl : AvatarIcon" class="self-img" />
            </a>
            <template #overlay>
              <a-menu>
                <a-menu-item>
                  <a @click="goUserCenter('userInfoEditView')">个人设置</a>
                </a-menu-item>
                <a-menu-item>
                  <a @click="quit()">退出</a>
                </a-menu-item>
              </a-menu>
            </template>
          </a-dropdown>
        </template>
        <template v-else>
          <div class="login btn hidden-sm" @click="goLogin()">登录</div>
        </template>

        <div class="right-icon" @click="msgVisible = true">
          <img :src="MessageIcon" />
        </div>
        <div>
          <a-drawer title="系统通知" placement="right" :closable="true" :maskClosable="true" :visible="msgVisible" @close="onClose">
            <a-spin :spinning="loading" style="min-height: 200px">
              <div class="list-content">
                <div class="notification-view">
                  <div class="list">
                    <div class="notification-item flex-view" v-for="item in msgData">
                      <!---->
                      <div class="content-box">
                        <div class="header">
                          <span class="title-txt">{{ item.title }}</span>
                          <br />
                          <span class="time">{{ item.create_time }}</span>
                        </div>
                        <div class="head-text"></div>
                        <div class="content">
                          <p>{{ item.content }}</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </a-spin>
          </a-drawer>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
  import { listApi } from '/@/api/index/notice';
  import { useUserStore } from '/@/store';
  import logoImage from '/@/assets/images/k-logo.png';
  import SearchIcon from '/@/assets/images/search-icon.svg';
  import AvatarIcon from '/@/assets/images/avatar.jpg';
  import MessageIcon from '/@/assets/images/ic-message.png';
  import { message } from 'ant-design-vue';
  import { detailApi } from '/@/api/index/user';
  import { BASE_URL } from '/@/store/constants';

  const router = useRouter();
  const route = useRoute();
  const userStore = useUserStore();

  const keywordRef = ref();

  let loading = ref(false);
  let msgVisible = ref(false);
  let msgData = ref([]);
  let avatarUrl = ref(undefined);
  let selectedMenu = ref('');
  let menuData = ref([
    { link: 'home', title: '首页' },
    { link: 'recommend', title: '热门推荐' },
    { link: 'usercenter', title: '个人中心' },
    { link: 'admin', title: '后台管理' },
  ]);

  onMounted(() => {
    getMessageList();
    getUserInfo();
  });

  watch(
    () => route.path,
    (newPath, _) => {
      if (newPath.indexOf('/index/home') > -1) {
        selectedMenu.value = 'home';
      } else if (newPath.indexOf('/index/usercenter') > -1) {
        selectedMenu.value = 'usercenter';
      } else if (newPath.indexOf('/index/recommend') > -1) {
        selectedMenu.value = 'recommend';
      }
    },
    { immediate: true },
  );

  const clickMenu = (item) => {
    if (item.link === 'admin') {
      let routeData = router.resolve({
        name: 'admin',
      });
      window.open(routeData.href, '_blank');
    } else {
      router.push({ name: item.link });
    }
  };

  const getUserInfo = () => {
    let userId = userStore.user_id;
    if (userId) {
      detailApi({ id: userId })
        .then((res) => {
          if (res.data.avatar) {
            avatarUrl.value = BASE_URL + res.data.avatar;
          }
        })
        .catch((err) => {
          console.log(err);
        });
    }
  };

  const getMessageList = () => {
    loading.value = true;
    listApi({})
      .then((res) => {
        msgData.value = res.data;
        loading.value = false;
      })
      .catch((err) => {
        console.log(err);
        loading.value = false;
      });
  };
  const search = () => {
    const keyword = keywordRef.value.value;
    if (route.name === 'search') {
      router.push({ name: 'search', query: { keyword: keyword } });
    } else {
      if (keyword && keyword.trim().length > 0) {
        let text = router.resolve({ name: 'search', query: { keyword: keyword } });
        window.open(text.href, '_blank');
      }
    }
  };
  const goLogin = () => {
    router.push({ name: 'login' });
  };

  const goUserCenter = (menuName) => {
    router.push({ name: menuName });
  };
  const quit = () => {
    userStore.logout().then((res) => {
      router.push({ name: 'home' });
    });
  };
  const onClose = () => {
    msgVisible.value = false;
  };

  const handleJoin = () => {
    let userId = userStore.user_id;
    if (userId) {
      router.push({ name: 'applyView' });
    } else {
      message.warn('请先登录！');
    }
  };
</script>

<style scoped lang="less">
  // 兼容手机端
  @media screen and (max-width: 720px) {
    .menu {
      display: none !important;
    }
    .search-entry {
      display: none !important;
    }

    #admin-entry {
      display: none !important;
    }

    .main-bar-view {
      width: 90% !important;
    }
  }

  @primary-color: #4684e2;

  .hd {
    //background: #fff;
    //background: #015578;
    //background: #79aec8;
    background: #417690;
    position: fixed;
    top: 0;
    left: 0;
    height: 50px;
    z-index: 16;
    width: 100%;
    //border-bottom: 1px solid #dedede;

    .main-bar-view {
      width: 80%;
      height: 50px;
      margin: 0 auto;
      display: flex;
      flex-direction: row;
      //justify-content: center; /*水平居中*/
      align-items: center; /*垂直居中*/
      .menu {
        display: flex;
        flex-direction: row;
        gap: 16px;
        white-space: nowrap;
        .menu-item {
          display: inline;
          cursor: pointer;
          padding: 0 10px;
          color: #fff;
          font-size: 14px;
          line-height: 48px;
        }
        .menu-item-selected {
          cursor: pointer;
          padding: 0 10px;
          color: #fff;
          font-size: 14px;
          font-weight: bold;
          line-height: 48px;
          border-bottom: 2px solid #fff;
        }
      }
    }
  }

  .logo {
    margin-right: 30px;

    img {
      width: 32px;
      height: 32px;
      cursor: pointer;
    }
  }

  .right-view {
    flex: 1;
    display: flex;
    flex-direction: row;
    gap: 16px;
    justify-content: flex-end; /* 内容右对齐 */

    .search-entry {
      position: relative;
      //width: 400px;
      width: 40%;
      min-width: 200px;
      height: 32px;
      background: #ecf3fc;
      padding: 0 12px;
      border-radius: 16px;
      font-size: 0;
      cursor: pointer;

      img {
        max-width: 100%;
        height: auto;
      }

      .search-icon {
        width: 18px;
        margin: 7px 8px 0 0;
      }

      input {
        position: absolute;
        top: 4px;
        width: 50%;
        height: 24px;
        border: 0px;
        outline: none;
        color: #000;
        background: #ecf3fc;
        font-size: 14px;
      }
    }

    .link {
      line-height: 32px;
      width: 60px;
      color: #fff;
    }

    .username {
      height: 32px;
      line-height: 32px;
      text-align: center;
    }

    button {
      outline: none;
      border: none;
      cursor: pointer;
    }

    img {
      cursor: pointer;
    }

    .right-icon {
      position: relative;
      cursor: pointer;
      font-size: 0;
      display: flex;
      align-items: center;

      img {
        width: 20px;
        height: 20px;
        object-fit: fill;
      }
      .msg-point {
        position: absolute;
        right: -4px;
        top: 0;
        min-width: 8px;
        width: 8px;
        height: 8px;
        background: #4684e2;
        border-radius: 50%;
      }
    }

    .self-img {
      width: 32px;
      height: 32px;
      border-radius: 50%;
      vertical-align: middle;
      cursor: pointer;
      object-fit: cover;
    }

    .btn {
      cursor: pointer;
      font-size: 14px;
      color: #eee;
      border-radius: 16px;
      text-align: center;
      width: 66px;
      height: 30px;
      line-height: 30px;
      vertical-align: middle;
      border: 1px solid #eee;
    }
  }

  .content-list {
    flex: 1;

    .list-title {
      color: #152844;
      font-weight: 600;
      font-size: 18px;
      //line-height: 24px;
      height: 48px;
      margin-bottom: 4px;
      border-bottom: 1px solid #cedce4;
    }
  }

  .notification-item {
    padding-top: 16px;

    .avatar {
      width: 32px;
      height: 32px;
      border-radius: 50%;
      margin-right: 8px;
    }

    .content-box {
      -webkit-box-flex: 1;
      -ms-flex: 1;
      flex: 1;
      border-bottom: 1px dashed #e9e9e9;
      padding: 4px 0 16px;
    }

    .header {
      margin-bottom: 12px;
    }

    .title-txt {
      color: #315c9e;
      font-weight: 500;
      font-size: 14px;
    }

    .time {
      color: #a1adc5;
      font-size: 14px;
    }

    .head-text {
      color: #152844;
      font-weight: 500;
      font-size: 14px;
      line-height: 22px;

      .name {
        margin-right: 8px;
      }
    }

    .content {
      margin-top: 4px;
      color: #484848;
      font-size: 14px;
      line-height: 22px;
    }
  }
</style>
