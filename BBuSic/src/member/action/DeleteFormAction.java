package member.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;

public class DeleteFormAction implements Action, MemberAware, SessionAware{

	private SqlMapClient sqlMapper;
	private Map session;
	private String id;
	private String passwd;

	public String execute() throws Exception {
		id = (String) session.get("memId");
		passwd = (String) sqlMapper.queryForObject("member.selectPasswd", id);
		return SUCCESS;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}
	public String getPasswd(){
		return passwd;
	}
}
