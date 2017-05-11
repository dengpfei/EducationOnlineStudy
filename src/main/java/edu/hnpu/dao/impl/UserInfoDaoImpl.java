package edu.hnpu.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.collections.CollectionUtils;

import edu.hnpu.bean.UserInfo;
import edu.hnpu.core.BaseDao;
import edu.hnpu.core.HQLExecute;
import edu.hnpu.dao.UserInfoDao;
public class UserInfoDaoImpl extends BaseDao implements UserInfoDao {

	@Override
	public void addUser(UserInfo user) {
		HQLExecute queryService = new HQLExecute(sessionFactory);
		queryService.insert(user);
	}

	@Override
	public UserInfo queryUserByUserCodeAndPassWord(UserInfo user) {
		HQLExecute queryService = new HQLExecute(sessionFactory);
		String sql = "select * from user_info  s where  s.user_name='"+user.getUserName()+"' and s.user_pwd='"+user.getUserPwd()+"'";
		List<?> userlist= queryService.findBySql(sql);
		List<UserInfo> userList = getUserInfoList(userlist);
		if (CollectionUtils.isEmpty(userList)) {
			return  null;
		}
		return userList.get(0);
	}

	private List<UserInfo> getUserInfoList(List<?> userlist){
		List<UserInfo> userInfo = new ArrayList<UserInfo>();
		UserInfo user = null;
		for (int i = 0; i < userlist.size(); i++) {
			user = new UserInfo();
			Object [] arr=(Object [])userlist.get(i);
			user.setUserName(arr[5]+"");
			user.setUserPwd(arr[6]+"");
			userInfo.add(user);
		}
		return userInfo;
	}
	@Override
	public UserInfo queryUserInfoByUserName(String userName) {
		HQLExecute queryService = new HQLExecute(sessionFactory);
		String hql = "from UserInfo where userName = ?";
		List<UserInfo> userList = queryService.find(hql, userName);
		if (CollectionUtils.isEmpty(userList)) {
			return  null;
		}
		return userList.get(0);
	}
}
