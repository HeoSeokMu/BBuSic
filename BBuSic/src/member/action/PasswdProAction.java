package member.action;

import member.DTO.MemberDTO;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class PasswdProAction implements Action, MemberAware, ModelDriven, Preparable{

	private String check;
	private SqlMapClient sqlMapper;
	MemberDTO mDTO;

	public String execute() throws Exception {
		sqlMapper.update("member.updatePasswd", mDTO);
		check = "check";
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

	public String getCheck(){
		return check;
	}
	
	public void setCheck(String check){
		this.check = check;
	}
}
