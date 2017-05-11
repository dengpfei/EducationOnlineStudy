package edu.hnpu.core;

import java.util.Collections;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.HibernateTemplate;

public class HQLExecute {

	private SessionFactory sessionFactory;

	private HibernateTemplate hibernateTemplate;

	public HQLExecute(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
		this.hibernateTemplate = new HibernateTemplate(sessionFactory);
	}

	/**
	 * @param hql
	 * @return
	 */

	@SuppressWarnings("unchecked")
	public <T> List<T> query(String hql) {
		Session session  = null;
		try {
			session = this.sessionFactory.getCurrentSession();
			if (session ==null) {
				session = this.sessionFactory.openSession();
			}
			Query query = session.createQuery(hql);
			return query.list();
		} catch (HibernateException e) {
			e.printStackTrace();
		}finally{
			if (session!=null) {
				session.close();
			}
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	public <T> List<T> queryEntityList(Class<T> clazz, String sql) {
		Session session = null;
		try {
			session = this.sessionFactory.openSession();
			return session.createSQLQuery(sql).addEntity(clazz).list();
		} catch (Exception e) {
			e.printStackTrace();
			return Collections.emptyList();
		} finally {
			closeSession(session);
		}
	}

	private void closeSession(Session session) {
		try {
			if (null != session) {
				session.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@SuppressWarnings("unchecked")
	public <T> List<T> queryOpenSession(String hql) {
		return hibernateTemplate.find(hql);
	}

	@SuppressWarnings("unchecked")
	public <T> List<T> find(String hql, Object... objects) {
		try {
			return hibernateTemplate.find(hql, objects);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public <T> void update(T entity) {
		try {
			hibernateTemplate.update(entity);
		} catch (DataAccessException e) {
			e.printStackTrace();
			throw e;
		}
	}

	public <T> void insert(T entity) {
		try {
			hibernateTemplate.save(entity);
		} catch (DataAccessException e) {
			e.printStackTrace();
			throw e;
		}
	}

	public <T> void saveOrUpdate(T entity) {
		try {
			hibernateTemplate.saveOrUpdate(entity);
		} catch (DataAccessException e) {
			e.printStackTrace();
			throw e;
		}
	}

	public <T> void saveOrUpdateAll(List<?> entity) {
		try {
			hibernateTemplate.saveOrUpdateAll(entity);
		} catch (DataAccessException e) {
			e.printStackTrace();
			throw e;
		}
	}

	public <T> int bulkUpdate(String queryString) {
		try {
			return hibernateTemplate.bulkUpdate(queryString);
		} catch (DataAccessException e) {
			e.printStackTrace();
			throw e;
		}
	}

	public int update(String sql) {
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createSQLQuery(sql);
			return query.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	@SuppressWarnings("unchecked")
	public <T> List<T> findBySql(String sql) {
		Session session = null;
		try {
			session = sessionFactory.openSession();
			 session.beginTransaction();
			Query query = session.createSQLQuery(sql);
			List<T> list = query.list();
			 session.getTransaction().commit();
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			return Collections.emptyList();
		} finally {
			closeSession(session);
		}
	}

	public <T> Object findUniqueResult(String sql) {
		Session session = null;
		try {
			session = sessionFactory.openSession();
			// session.beginTransaction();
			Query query = session.createSQLQuery(sql);
			Object object = query.uniqueResult();
			// session.getTransaction().commit();
			return object;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			closeSession(session);
		}
	}

	public <T> void insertBatch(List<?> list) {
		Transaction tx = null;
		Session session = null;
		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			for (int i = 0; i < list.size(); i++) {
				session.save(list.get(i));
				if (i % 25 == 0) {
					session.flush();
					session.clear();
				}
			}
			tx.commit();
		} catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
		} finally {
			closeSession(session);
		}
	}
}

