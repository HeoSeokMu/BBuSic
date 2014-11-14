package payment.action;

import com.opensymphony.xwork2.Action;

public class buyPayment_SendEmailFormAction implements Action{
	
	private int delete_cash;
	private String buy_id;
	private int money_in;
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		System.out.println("buyPayment_SendEmailFormAction =============");
		System.out.println("cash_id : "+ buy_id);
		System.out.println("delete_cash : "+delete_cash);
		System.out.println("money_in : "+money_in);
		return SUCCESS;
	}

	public int getDelete_cash() {
		return delete_cash;
	}

	public void setDelete_cash(int delete_cash) {
		this.delete_cash = delete_cash;
	}

	public String getBuy_id() {
		return buy_id;
	}

	public void setBuy_id(String buy_id) {
		this.buy_id = buy_id;
	}

	public int getMoney_in() {
		return money_in;
	}

	public void setMoney_in(int money_in) {
		this.money_in = money_in;
	}
}
