package action;
import java.util.ArrayList;
import java.util.Map;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import entity.User;
import service.UserService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class UserAction extends ActionSupport implements ModelDriven<User>{
	
	private static final long serialVersionUID = 1L;
	private ArrayList<User> ulist=null;
	private UserService userService;
	private User user=new User();
	private final Log logger = LogFactory.getLog(UserAction.class);
	
	//��¼����
	public String login() {
		if(userService.login(user)) {
			logger.error(user.getUserName()+"��¼�ɹ���");
			ActionContext.getContext().getSession().put("user", user);
			return SUCCESS;
		}
		return INPUT;
	}

	//��ȡȫ���û�����
	public String getUserList() {
		ulist=(ArrayList<User>) userService.getUserList();
		if(ulist!=null){
			ActionContext.getContext().getSession().put("ulist", ulist);
			return SUCCESS;
		}
		return ERROR;
	}
	
	//��ȡ�����û���Ϣ
	public String getUser() {
		User user1=userService.getUser(user.getId());
		if(user1!=null) {
			ActionContext.getContext().getSession().put("user1", user1);
			return SUCCESS;
		}
		return ERROR;
	}
	
	//ɾ���û���Ϣ
	public String deleteUser() {
		if(userService.delete(user.getId())) {
			ulist=(ArrayList<User>) userService.getUserList();
			ActionContext.getContext().getSession().put("ulist",ulist);
			return SUCCESS;
		}
		return ERROR;
	}
	
	//�޸��û���Ϣ
	public String updateUser() {
		user.setId(user.getId());
		user.setUserName(user.getUserName());
		user.setPassword(user.getPassword());
		user.setGrade(user.getGrade());
		if(userService.update(user)) {
			logger.info(user.getUserName()+"�޸���Ϣ�ɹ���");
			ulist=(ArrayList<User>) userService.getUserList();
			ActionContext.getContext().getSession().put("ulist",ulist);
			return SUCCESS;
		}
		logger.debug(user.getUserName()+"�޸���Ϣʧ�ܣ�");
		return ERROR;
	}
	
	//��ȫ�˳�ϵͳ
	public String loginOut() {
		Map session = ActionContext.getContext().getSession();  
		session.remove("user");
		logger.info(user.getUserName()+"�˳���¼��");
		return SUCCESS;
	}
	
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	public UserService getUserService() {
		return userService;
	}
	
	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}
}
