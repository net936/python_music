import { get, post } from '/@/utils/http/axios';
import { UserState } from '/@/store/modules/user/types';

const URL = {
  userCollectList: '/api/thingCollect/getUserCollectList',
  collect: '/api/thingCollect/collect',
  unCollect: '/api/thingCollect/unCollect',
};

const collectApi = async (data) =>
  post({ url: URL.collect, params: {}, data: data, headers: { 'Content-Type': 'multipart/form-data;charset=utf-8' } });
const unCollectApi = async (params) =>
  post({ url: URL.unCollect, params: params, headers: { 'Content-Type': 'multipart/form-data;charset=utf-8' } });
const userCollectListApi = async (params) => get({ url: URL.userCollectList, params: params });

export { collectApi, unCollectApi, userCollectListApi };
