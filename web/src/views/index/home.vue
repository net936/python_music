<template>
  <div class="portal">
    <Header />
    <div class="content">
      <div class="content-top">
        <div class="left-search-item">
          <div class="label">分类:</div>
          <div class="c-list">
            <div
              :class="contentData.c === item.id ? 'c-item-selected' : 'c-item'"
              v-for="item in contentData.cData"
              :key="item.id"
              @click="clickCategory(item.id)"
            >
              {{ item.title }}
            </div>
          </div>
        </div>
        <div class="left-search-item">
          <div class="label">语言:</div>
          <div class="c-list">
            <div
              :class="contentData.cc === item ? 'c-item-selected' : 'c-item'"
              v-for="item in contentData.ccData"
              :key="item"
              @click="clickCC(item)"
            >
              {{ item }}
            </div>
          </div>
        </div>
      </div>
      <div class="content-down">
        <div class="down-wrap">
          <div class="tab-view flex-view">
            <div
              class="tab"
              :class="contentData.selectTabIndex === index ? 'tab-select' : ''"
              v-for="(item, index) in contentData.tabData"
              :key="index"
              @click="selectTab(index)"
            >
              {{ item }}
            </div>
          </div>
          <a-spin :spinning="contentData.loading" style="min-height: 200px">
            <div class="pc-thing-list flex-view">
              <div v-for="item in contentData.pageData" :key="item.id" @click="handleDetail(item)" class="thing-item item-column-3"
                ><!---->
                <div class="img-view"><img :src="item.cover" /></div>
                <div class="info-view">
                  <h3 class="thing-name">{{ item.title.substring(0, 12) }}</h3>
                  <span>
                    <span class="a-price">{{ item.geshou}}</span>
                    <span class="a-price">{{ item.pv }}次播放</span>
                  </span>
                </div>
              </div>
              <div v-if="contentData.pageData.length <= 0 && !contentData.loading" class="no-data" style="">暂无数据</div>
            </div>
          </a-spin>
          <div class="page-view" style="">
            <a-pagination
              v-model="contentData.page"
              size="small"
              @change="changePage"
              :hideOnSinglePage="true"
              :defaultPageSize="contentData.pageSize"
              :total="contentData.total"
              :showSizeChanger="false"
            />
          </div>
        </div>
      </div>

      <div style="position: fixed; bottom: 10px; right: 10px">
        <a-tag color="blue">源码客服微信：Lengqin1024</a-tag>
      </div>
    </div>
    <Footer />
  </div>
</template>
<script setup>
  import Header from '/@/views/index/components/header.vue';
  import Footer from '/@/views/index/components/footer.vue';
  import { listApi as listClassificationList } from '/@/api/index/classification';
  import { listApi as listThingList } from '/@/api/index/thing';
  import { BASE_URL } from '/@/store/constants';
  import { useUserStore } from '/@/store';

  const userStore = useUserStore();
  const router = useRouter();

  const contentData = reactive({
    c: -1,
    cc: '全部',
    cData: [],
    ccData: ['全部', '国语', '英语', '粤语', '法语', '西班牙语', '日语'],

    loading: false,

    tabData: ['最新', '最热'],
    selectTabIndex: 0,
    sort: '',

    thingData: [],
    pageData: [],

    page: 1, // 分页
    total: 0,
    pageSize: 12,
  });

  onMounted(() => {
    initFilter();
    getThingList();
  });

  // 过滤栏
  const initFilter = () => {
    contentData.cData.push({ id: -1, title: '全部' });
    listClassificationList().then((res) => {
      res.data.forEach((item) => {
        contentData.cData.push(item);
      });
    });
  };

  // 点击分类
  const clickCategory = (id) => {
    contentData.c = id;
    getThingList();
  };

  // 点击分类2
  const clickCC = (item) => {
    contentData.cc = item;
    getThingList();
  };

  // 最新|最热|推荐
  const selectTab = (index) => {
    contentData.selectTabIndex = index;
    console.log(contentData.selectTabIndex);
    let sort = index === 0 ? 'recent' : 'hot';
    contentData.sort = sort;
    getThingList();
  };
  const handleDetail = (item) => {
    // 详情页
    router.push({ name: 'detail', query: { id: item.id } });
  };
  // 分页事件
  const changePage = (page) => {
    contentData.page = page;
    let start = (contentData.page - 1) * contentData.pageSize;
    contentData.pageData = contentData.thingData.slice(start, start + contentData.pageSize);
    console.log('第' + contentData.page + '页');
  };
  const getThingList = () => {
    contentData.loading = true;
    let params = {
      c: contentData.c,
      cc: contentData.cc,
      sort: contentData.sort,
    };
    listThingList(params)
      .then((res) => {
        contentData.loading = false;
        res.data.forEach((item, index) => {
          if (item.cover) {
            item.cover = BASE_URL + item.cover;
          }
        });
        console.log(res);
        contentData.thingData = res.data;
        contentData.total = contentData.thingData.length;
        changePage(1);
      })
      .catch((err) => {
        console.log(err);
        contentData.loading = false;
      });
  };
</script>

<style scoped lang="less">
  // 兼容
  @media screen and (max-width: 720px) {
    .thing-item {
      width: calc((100% - 20 * 1px) / 2) !important;
      .img-view {
        height: 100px !important;
      }
    }
    .content-top {
      width: 90% !important;
    }
    .down-wrap {
      width: 90% !important;
    }
  }

  @primary-color: #4684e2;

  .content {
    display: flex;
    flex-direction: column;
    margin: 56px auto;
    width: 100%;
  }

  .content-top {
    width: 80%;
    margin: 8px auto;
    .left-search-item {
      overflow: hidden;
      margin: 16px 0;
      display: flex;
      flex-direction: row;

      .label {
        color: #212121;
        font-weight: 600;
        font-size: 15px;
        margin-right: 12px;
        width: 40px;
        line-height: 27px;
      }

      .c-list {
        flex: 1;
        display: flex;
        flex-wrap: wrap;
        flex-direction: row;
        align-items: center;

        .c-item {
          display: inline-block;
          cursor: pointer;
          margin: 2px 10px;
          color: #212121;
          font-size: 15px;
        }

        .c-item:hover {
          color: #616161;
        }

        .c-item-selected {
          display: inline-block;
          cursor: pointer;
          margin: 2px 10px;
          font-weight: bold;
          font-size: 15px;
          color: #616161;
        }
      }
    }
  }

  .flex-view {
    -webkit-box-pack: justify;
    -ms-flex-pack: justify;
    //justify-content: space-between;
    display: flex;
  }

  .content-down {
    background: #ebf7f8;
    min-height: 375px;

    .down-wrap {
      -webkit-box-flex: 1;
      -ms-flex: 1;
      flex: 1;
      width: 80%;
      margin: 0 auto;

      .flex-view {
        display: flex;
      }

      .tab-view {
        display: flex;
        flex-direction: row;
        gap: 8px;
        margin-top: 20px;
        margin-bottom: 20px;
        .tab {
          height: 24px;
          line-height: 24px;
          padding: 0 12px;
          text-align: center;
          display: inline-block;
          font-size: 14px;
          color: #545c63;
          cursor: pointer;
        }

        .tab-select {
          border-radius: 12px;
          background-color: @primary-color;
          color: #fff;
        }
      }

      .pc-thing-list {
        -ms-flex-wrap: wrap;
        flex-wrap: wrap;
        gap: 20px;

        .thing-item {
          width: calc((100% - 20 * 3px) / 4);
          position: relative;
          height: fit-content;
          overflow: hidden;
          cursor: pointer;

          .img-view {
            width: 100%;
            aspect-ratio: 4/3;

            img {
              height: 100%;
              width: 100%;
              border-radius: 8px;
              margin: 0 auto;
              background-size: cover;
              object-fit: cover;
            }
          }

          .info-view {
            //background: #f6f9fb;
            overflow: hidden;
            padding: 0 0px;

            .thing-name {
              line-height: 20px;
              margin-top: 12px;
              font-size: 18px;
              color: #0f1111 !important;
              font-weight: 500;
            }

            .price {
              color: #ff7b31;
              font-size: 14px;
              line-height: 20px;
              margin-top: 4px;
              overflow: hidden;
              white-space: nowrap;
            }

            .translators {
              color: #6f6f6f;
              font-size: 12px;
              line-height: 14px;
              margin-top: 4px;
              overflow: hidden;
              text-overflow: ellipsis;
              white-space: nowrap;
            }
          }
        }

        .no-data {
          height: 200px;
          line-height: 200px;
          text-align: center;
          width: 100%;
          font-size: 16px;
          color: #152844;
        }
      }

      .page-view {
        width: 100%;
        text-align: center;
        margin-top: 48px;
      }
    }
  }

  .a-price {
    color: #0f1111;
    font-size: 14px;
    margin-right: 10px;
  }
</style>
