import { get, post } from '/@/utils/http/axios';

const URL = {
  create: '/myapp/index/feedback/create',
};

const createApi = async (params, data) => post({ url: URL.create, params: params, data: data, headers: {} });

export { createApi };
