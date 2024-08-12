<template>
  <div class="portal">
    <Header />
    <div class="content">
      <a-spin :spinning="contentData.loading" style="min-height: 200px">
        <div class="pc-thing-list flex-view">
          <div v-for="item in contentData.pageData" :key="item.id" @click="handleDetail(item)" class="thing-item item-column-3"
            ><!---->
            <div class="img-view"><img :src="item.cover" /></div>
            <div class="info-view">
              <h3 class="thing-name">{{ item.title.substring(0, 12) }}</h3>
              <span>
                <span class="a-price-symbol"></span>
                <span class="a-price">{{ item.geshou }}</span>&nbsp;
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
    <Footer />
  </div>
</template>
<script setup>
  import Header from '/@/views/index/components/header.vue';
  import Footer from '/@/views/index/components/footer.vue';
  import { getRecommendApi } from '/@/api/index/thing';
  import { BASE_URL } from '/@/store/constants';
  import { useUserStore } from '/@/store';

  const userStore = useUserStore();
  const router = useRouter();

  const contentData = reactive({
    loading: false,

    thingData: [],
    pageData: [],

    page: 1,
    total: 0,
    pageSize: 12,
  });

  onMounted(() => {
    getThingList({});
  });

  const handleDetail = (item) => {
    // 跳转新页面
    let text = router.resolve({ name: 'detail', query: { id: item.id } });
    window.open(text.href, '_blank');
  };
  // 分页事件
  const changePage = (page) => {
    contentData.page = page;
    let start = (contentData.page - 1) * contentData.pageSize;
    contentData.pageData = contentData.thingData.slice(start, start + contentData.pageSize);
    console.log('第' + contentData.page + '页');
  };
  const getThingList = (data) => {
    contentData.loading = true;
    getRecommendApi({},{})
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
    .content {
      width: 90% !important;
    }
  }

  .content {
    display: flex;
    flex-direction: column;
    margin: 100px auto 56px;
    width: 80%;
    min-height: 500px;
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
            font-size: 16px;
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
  }

  .flex-view {
    -webkit-box-pack: justify;
    -ms-flex-pack: justify;
    display: flex;
  }
</style>
