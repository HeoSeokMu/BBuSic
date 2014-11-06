package member.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import member.DTO.MemberDTO;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class ModifyProAction implements Action, MemberAware, Preparable, ModelDriven, SessionAware{
	
	private SqlMapClient sqlMapper;
	MemberDTO mDTO;
	private Map session;
	private String id;
	private String check;
	
	public String execute() throws Exception {
		id = (String) session.get("memId");
		sqlMapper.update("member.updateMember", mDTO);
		mDTO = (MemberDTO) sqlMapper.queryForObject("member.selectMember", id);
		if(mDTO != null){
			check = "check";
		}
		return SUCCESS;
	}
	
	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}

	public void prepare() throws Exception {
		mDTO = new MemberDTO();
	}
	
	public Object getModel() {
		return mDTO;
	}
	public MemberDTO getmDTO(){
		return mDTO;
	}
	
	public void setSession(Map session) {
		this.session = session;
	}
	
	public String getCheck(){
		return check;
	}
}
