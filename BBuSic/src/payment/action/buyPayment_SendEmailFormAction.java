package payment.action;

import payment.pay_setDTO.buyInfo_DTO;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class buyPayment_SendEmailFormAction implements Action, Preparable, ModelDriven{
	
	buyInfo_DTO buyInfo;
	private int cash_in;
	private int delete_cash;
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		System.out.println("buyPayment_SendEmailFormAction =============");
		System.out.println("buy_id : "+ buyInfo.getBuy_id());
		System.out.println("pay_name : "+buyInfo.getPay_name());
		System.out.println("pay_benefit : "+buyInfo.getPayment());
		System.out.println("amount : "+buyInfo.getAmount());
		System.out.println("payment : "+buyInfo.getPayment());
		System.out.println("buy_option : "+buyInfo.getBuy_option());
		System.out.println("download_count : "+buyInfo.getDownload_count());
		return SUCCESS;
	}

	@Override
	public void prepare() throws Exception {
		buyInfo = new buyInfo_DTO();
	}
	
	@Override
	public Object getModel() {
		// TODO Auto-generated method stub
		return buyInfo;
	}

	public int getCash_in() {
		return cash_in;
	}

	public void setCash_in(int cash_in) {
		this.cash_in = cash_in;
	}

	public int getDelete_cash() {
		return delete_cash;
	}

	public void setDelete_cash(int delete_cash) {
		this.delete_cash = delete_cash;
	}
}
