package member.action;

import member.DTO.MemberDTO;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class resetPasswdFinishAction implements Action, MemberAware, ModelDriven, Preparable{
	private String check;
	MemberDTO mDTO;
	private SqlMapClient sqlMapper;
	
	public String execute() throws Exception {
		sqlMapper.update("member.resetPasswd", mDTO);
		check = "check";
		return SUCCESS;
	}

	public void prepare() throws Exception {
		mDTO = new MemberDTO();
	}

	public Object getModel() {
		return mDTO;
	}

	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}
	
	public String getCheck(){
		return check;
	}

}
