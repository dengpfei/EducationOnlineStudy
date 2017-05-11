package edu.hnpu.dao;

import edu.hnpu.bean.UserInfo;

public interface UserInfoDao {
	/**
	 * 登录时校验账号密码
	 * @param user
	 * @return
	 */
	public UserInfo queryUserByUserCodeAndPassWord(UserInfo user);
	/**
	 * 用户的注册
	 * @param user
	 */
	public void addUser(UserInfo user);
	/**
	 * 注册时查询是不是账号已经存在了
	 * @param userName
	 * @return
	 */
	public UserInfo queryUserInfoByUserName(String userName);
}
