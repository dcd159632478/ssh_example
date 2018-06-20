/**
 * 登录过滤器
 */
package filter;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.opensymphony.xwork2.ActionContext;
import entity.User;

public class LoginFilter extends HttpServlet implements Filter{

	private static final long serialVersionUID = 1L;

	@Override
	public void destroy() {
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,      
         FilterChain filterChain) throws IOException, ServletException{
		
		HttpServletRequest hrequest = (HttpServletRequest) request;      
        HttpServletResponse hresponse = (HttpServletResponse) response;      
        String url=hrequest.getServletPath();  
        String contextPath=hrequest.getContextPath();  
        User user=(User)ActionContext.getContext().getSession().get("user");  
	    if(url.indexOf("login.jsp")>0||url.endsWith(".css")||url.endsWith(".js")||url.endsWith(".jpg")||url.endsWith(".png")){
	    	  
	    }else {
	        if(user==null){//转入管理员登陆页面  
	        	hresponse.sendRedirect(contextPath+"/login.jsp"); 
	        	return; 
	        }
	    }
	    filterChain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		
	}

}
