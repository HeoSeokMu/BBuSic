package payment.action;

import com.opensymphony.xwork2.Action;

public class cashChargeAction implements Action {
	
	private int cash;
	private String cash_id;
	
	public String execute() throws Exception {
			
		return SUCCESS;
	}

	public int getCash() {
		return cash;
	}

	public void setCash(int cash) {
		this.cash = cash;
	}

	public String getCash_id() {
		return cash_id;
	}

	public void setCash_id(String cash_id) {
		this.cash_id = cash_id;
	}
}