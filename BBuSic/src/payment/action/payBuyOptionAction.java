package payment.action;

import payment.pay_setDTO.pay_DTO;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class payBuyOptionAction implements Action, Preparable, ModelDriven {
	
	private pay_DTO payDTO;
	
	@Override
	public String execute() throws Exception {
		
		System.out.println("pay_name : " + payDTO.getPay_name());
		System.out.println("pay_benefit : " + payDTO.getPay_benefit());
		System.out.println("amount : " + payDTO.getAmount());
		System.out.println("sale : " + payDTO.getSale());
		
		
		return SUCCESS;
	}
	
	@Override
	public void prepare() throws Exception {
		payDTO = new pay_DTO();
	}
	
	@Override
	public Object getModel() {
		// TODO Auto-generated method stub
		return payDTO;
	}
}
