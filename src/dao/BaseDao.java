package dao;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

public class BaseDao extends HibernateDaoSupport{
	
	Object data=null;
	boolean result=true;//标识操作是否成功
	//获取带查询条件的查询数据
	public Object getData(String sql,String[] params) {
		data= this.getHibernateTemplate().find(sql, params);
		return data;
	}
	
	//根据id获取实体集合
	public Object getById(Class c,int id) {
		data=this.getHibernateTemplate().get(c, id);
		return data;
	}
	
	//删除实体信息
	public boolean delete(Object obj) {
		try {
			this.getHibernateTemplate().delete(obj);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("删除操作失败！");
			result=false;
		}
		return result;
	}
	
	//修改实体信息
	public boolean update(Object obj) {
		try {
			this.getHibernateTemplate().update(obj);
		} catch (Exception e) {
			e.printStackTrace();
			result=false;
			System.out.println("修改操作失败！");
		}
		return result;
	}
}
