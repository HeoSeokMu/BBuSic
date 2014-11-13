package member.action;

import member.DTO.MemberDTO;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class resetPasswdFormAction implements Action{

	public String execute() throws Exception {
		return SUCCESS;
	}
}
