package member.action;

import member.DTO.MemberDTO;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class ConfirmAction implements Action, Preparable, ModelDriven{
	MemberDTO mDTO;
	
	public String execute() throws Exception {
		System.out.println(mDTO.getEmail());
		return SUCCESS;
	}
	
	public void prepare() throws Exception {
		mDTO = new MemberDTO();
	}
	
	public Object getModel() {
		return mDTO;
	}
}