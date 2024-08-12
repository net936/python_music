// 权限问题后期增加
import { get, post } from '/@/utils/http/axios';
const URL = {
  list: '/myapp/index/thing/list',
  detail: '/myapp/index/thing/detail',
  addWishUser: '/myapp/index/thing/addWishUser',
  addCollectUser: '/myapp/index/thing/addCollectUser',
  getCollectThingList: '/myapp/index/thing/getCollectThingList',
  getWishThingList: '/myapp/index/thing/getWishThingList',
  removeCollectUser: '/myapp/index/thing/removeCollectUser',
  removeWishUser: '/myapp/index/thing/removeWishUser',
  listUserThing: '/myapp/index/thing/listUserThing',
  create: '/myapp/index/thing/create',
  update: '/myapp/index/thing/update',
  getRecommend: '/myapp/index/thing/getRecommend',
  rate: '/myapp/index/thing/rate',
};

const listApi = async (params) => get({ url: URL.list, params: params, data: {}, headers: {} });
const detailApi = async (params) => get({ url: URL.detail, params: params, headers: {} });
const addWishUserApi = async (params) => post({ url: URL.addWishUser, params: params, headers: {} });
const addCollectUserApi = async (params) => post({ url: URL.addCollectUser, params: params, headers: {} });
const getCollectThingListApi = async (params) => get({ url: URL.getCollectThingList, params: params, headers: {} });
const getWishThingListApi = async (params) => get({ url: URL.getWishThingList, params: params, headers: {} });

const removeCollectUserApi = async (params) => post({ url: URL.removeCollectUser, params: params, headers: {} });
const removeWishUserApi = async (params) => post({ url: URL.removeWishUser, params: params, headers: {} });

const listUserThingApi = async (params) => get({ url: URL.listUserThing, params: params, data: {}, headers: {} });
const createApi = async (data) =>
  post({ url: URL.create, params: {}, data: data, headers: { 'Content-Type': 'multipart/form-data;charset=utf-8' } });
const updateApi = async (params, data) =>
  post({ url: URL.update, params: params, data: data, headers: { 'Content-Type': 'multipart/form-data;charset=utf-8' } });

const getRecommendApi = async (params, data) =>
  get({ url: URL.getRecommend, params: params, data: data, headers: { 'Content-Type': 'multipart/form-data;charset=utf-8' } });

const rateApi = async (params) => post({ url: URL.rate, params: params, headers: { 'Content-Type': 'multipart/form-data;charset=utf-8' } });

export {
  listApi,
  detailApi,
  addWishUserApi,
  addCollectUserApi,
  getCollectThingListApi,
  getWishThingListApi,
  removeCollectUserApi,
  removeWishUserApi,
  listUserThingApi,
  createApi,
  updateApi,
  getRecommendApi,
  rateApi,
};
