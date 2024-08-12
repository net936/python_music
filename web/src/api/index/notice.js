import { get, post } from '/@/utils/http/axios';

const URL = {
  list: '/myapp/index/notice/list_api',
};

const listApi = async (params) => get({ url: URL.list, params: params, data: {}, headers: {} });

export { listApi };
