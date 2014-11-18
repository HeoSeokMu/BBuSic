package member.action;

import com.opensymphony.xwork2.Action;

public class testAction implements Action{
	private int num= (int) (Math.random()*8999)+1000;
	private String body="본인 인증 번호는 : "+ num +"입니다.";		//*내용
	
	public String execute() throws Exception {
		return SUCCESS;
	}

}
