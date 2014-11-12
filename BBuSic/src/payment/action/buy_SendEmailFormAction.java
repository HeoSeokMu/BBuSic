package payment.action;

import com.opensymphony.xwork2.Action;

public class buy_SendEmailFormAction implements Action{
	
	private int cash;
	private String cash_id;
	private int money_in;
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		System.out.println("buy_SendEmailFormAction =============");
		System.out.println("cash_id : "+ cash_id);
		System.out.println("cash : "+cash);
		System.out.println("money_in : "+money_in);
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

	public int getMoney_in() {
		return money_in;
	}

	public void setMoney_in(int money_in) {
		this.money_in = money_in;
	}
}
