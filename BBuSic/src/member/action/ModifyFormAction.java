package member.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import member.DTO.MemberDTO;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class ModifyFormAction implements Action, MemberAware, Preparable, ModelDriven, SessionAware{

	private SqlMapClient sqlMapper;
	MemberDTO mDTO;
	private Map session;
	private String id;
	
	public String execute() throws Exception {
		id = (String) session.get("memId");	
		mDTO = (MemberDTO) sqlMapper.queryForObject("member.selectMember", id);
		return SUCCESS;
	}
	
	public void prepare() throws Exception {
		this.mDTO = new MemberDTO();
	}

	public Object getModel() {
		return mDTO;
	}

	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	public MemberDTO getmDTO() {
		return mDTO;
	}
}