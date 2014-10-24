package member.action;

import com.opensymphony.xwork2.Action;

public class AgreementAction implements Action{
	public String execute() throws Exception {
		System.out.println("AgreementAction");
		return SUCCESS;
	}
}
