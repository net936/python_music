// 权限问题后期增加
import { get, post } from '/@/utils/http/axios';
const URL = {
  userLogin: '/myapp/index/user/login',
  userRegister: '/myapp/index/user/register',
  detail: '/myapp/index/user/info',
  updateUserPwd: '/myapp/index/user/updatePwd',
  updateUserInfo: '/myapp/index/user/update',
};

const detailApi = async (params) => get({ url: URL.detail, params: params, data: {}, headers: {} });
const userLoginApi = async (data) => post({ url: URL.userLogin, data, headers: { 'Content-Type': 'multipart/form-data;charset=utf-8' } });
const userRegisterApi = async (data) => post({ url: URL.userRegister, params: {}, data: data });
const updateUserPwdApi = async (params, data) => post({ url: URL.updateUserPwd, params: params, data: data });
const updateUserInfoApi = async (params, data) =>
  post({ url: URL.updateUserInfo, params: params, data: data, headers: { 'Content-Type': 'multipart/form-data;charset=utf-8' } });

export { detailApi, userLoginApi, userRegisterApi, updateUserPwdApi, updateUserInfoApi };
