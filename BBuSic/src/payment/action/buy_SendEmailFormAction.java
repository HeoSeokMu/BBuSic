package payment.action;

import com.opensymphony.xwork2.Action;

public class buy_SendEmailFormAction implements Action{
	
	private String cash;
	private String my_id;
	private String money_in;
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		System.out.println("buy_SendEmailFormAction =============");
		System.out.println("my_id : "+ my_id);
		System.out.println("cash : "+cash);
		System.out.println("money_in : "+money_in);
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

	public String getMoney_in() {
		return money_in;
	}

	public void setMoney_in(String money_in) {
		this.money_in = money_in;
	}
}
