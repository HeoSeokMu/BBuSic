package member.action;

import java.util.*;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.Action;

public class LogoutAction implements Action, SessionAware{
	private Map session;
	public String execute() throws Exception {
		session.remove("memId");
		return SUCCESS;
	}
	
	public void setSession(Map session) {
		this.session = session;
	}
}
