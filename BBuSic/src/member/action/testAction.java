package member.action;

import com.opensymphony.xwork2.Action;

public class testAction implements Action{
	private int num= (int) (Math.random()*8999)+1000;
	private String body="���� ���� ��ȣ�� : "+ num +"�Դϴ�.";		//*����
	
	public String execute() throws Exception {
		return SUCCESS;
	}

}
