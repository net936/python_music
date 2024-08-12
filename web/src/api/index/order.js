import { get, post } from '/@/utils/http/axios';

const URL = {
  create: '/myapp/index/order/create',
  cancelUserOrder: '/myapp/index/order/cancel_order',
  userOrderList: '/myapp/index/order/list',
};

const createApi = async (data) => post({ url: URL.create, data: data, headers: {} });

const userOrderListApi = async (params) => get({ url: URL.userOrderList, params: params, data: {}, headers: {} });

const cancelUserOrderApi = async (params) => post({ url: URL.cancelUserOrder, params: params, headers: {} });

export { createApi, userOrderListApi, cancelUserOrderApi };
