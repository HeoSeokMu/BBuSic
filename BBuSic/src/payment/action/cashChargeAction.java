package payment.action;

import com.opensymphony.xwork2.Action;

public class cashChargeAction implements Action {
	
	private String cash;
	private String my_id;
	
	public String execute() throws Exception {
			
		return SUCCESS;
	}

	public String getCash() {
		return cash;
	}

	public void setCash(String cash) {
		this.cash = cash;
	}

	public String getMy_id() {
		return my_id;
	}

	public void setMy_id(String my_id) {
		this.my_id = my_id;
	}
}