package member.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;

public class DeleteProAction implements Action, MemberAware, SessionAware{

	private SqlMapClient sqlMapper;
	private Map session;
	private String id;
	private String check;

	public String execute() throws Exception {
		id = (String) session.get("memId");
		sqlMapper.update("member.deleteMember", id);
		session.remove("memId");
		check = "delete";
		return SUCCESS;
	}
	
	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}

	public void setSession(Map session) {
		this.session = session;
	}
}
