package member.action;

import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;

import org.apache.struts2.interceptor.SessionAware;

public class LoginProAction implements Action, SessionAware, MemberAware{
	private Map session;
	private int check;
	private String id;
	private String passwd;
	private String passwd2;
	private SqlMapClient sqlMapper;
	
	public String execute() throws Exception {
		passwd2 = (String)sqlMapper.queryForObject("member.selectPasswd", id);
		
		if(passwd.equals(passwd2)){
			session.put("memId", id);
			check = 0;
		}else{
			check = 1;
		}
		
		return SUCCESS;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	public void setId(String id){
		this.id = id;
	}
	
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	
	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}

	public int getCheck() {
		return check;
	}
}