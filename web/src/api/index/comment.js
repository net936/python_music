import { get, post } from '/@/utils/http/axios';

const URL = {
  create: '/myapp/index/comment/create',
  listThingComments: '/myapp/index/comment/list',
  listUserComments: '/myapp/index/comment/listMyComments',
  like: '/myapp/index/comment/like',
};

const createApi = async (data) =>
  post({
    url: URL.create,
    params: {},
    data: data,
    headers: { 'Content-Type': 'multipart/form-data;charset=utf-8' },
  });
const listThingCommentsApi = async (params) => get({ url: URL.listThingComments, params: params, data: {}, headers: {} });
const listUserCommentsApi = async (params) => get({ url: URL.listUserComments, params: params, data: {}, headers: {} });
const likeApi = async (params) => post({ url: URL.like, params: params, headers: {} });

export { createApi, listThingCommentsApi, listUserCommentsApi, likeApi };
