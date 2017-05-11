package edu.hnpu.service.impl;

import edu.hnpu.bean.UserInfo;
import edu.hnpu.dao.UserInfoDao;
import edu.hnpu.dao.impl.UserInfoDaoImpl;
import edu.hnpu.service.UserService;

public class UserServiceImpl implements UserService{

	private UserInfoDao userInfoDaoImpl;
	@Override
	public void addUser(UserInfo user) {
		userInfoDaoImpl.addUser(user);
	}
	public void setUserInfoDaoImpl(UserInfoDaoImpl userInfoDaoImpl) {
		this.userInfoDaoImpl = userInfoDaoImpl;
	}
	@Override
	public UserInfo queryUserByUserCodeAndPassWord(UserInfo user) {
		return userInfoDaoImpl.queryUserByUserCodeAndPassWord(user);
	}
	@Override
	public UserInfo queryUserInfoByUserName(String userName) {
		return userInfoDaoImpl.queryUserInfoByUserName(userName);
	}
}
