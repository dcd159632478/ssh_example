package dao;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

public class BaseDao extends HibernateDaoSupport{
	
	Object data=null;
	boolean result=true;//��ʶ�����Ƿ�ɹ�
	//��ȡ����ѯ�����Ĳ�ѯ����
	public Object getData(String sql,String[] params) {
		data= this.getHibernateTemplate().find(sql, params);
		return data;
	}
	
	//����id��ȡʵ�弯��
	public Object getById(Class c,int id) {
		data=this.getHibernateTemplate().get(c, id);
		return data;
	}
	
	//ɾ��ʵ����Ϣ
	public boolean delete(Object obj) {
		try {
			this.getHibernateTemplate().delete(obj);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("ɾ������ʧ�ܣ�");
			result=false;
		}
		return result;
	}
	
	//�޸�ʵ����Ϣ
	public boolean update(Object obj) {
		try {
			this.getHibernateTemplate().update(obj);
		} catch (Exception e) {
			e.printStackTrace();
			result=false;
			System.out.println("�޸Ĳ���ʧ�ܣ�");
		}
		return result;
	}
}
