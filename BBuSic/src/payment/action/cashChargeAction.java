package payment.action;

import java.util.ArrayList;
import java.util.List;

import payment.pay_setDTO.cashCharge_DTO;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;

public class cashChargeAction implements Action, BBuSicAware {
	
	private int cash;
	private String my_id;
	public SqlMapClient sqlMapper;
	
	public String execute() throws Exception {
		
		System.out.println("cashChargeAction ===================================================");
		System.out.println("my_id : "+my_id);
		if(my_id.equals(" ") || my_id != null) {
			cash = (int)sqlMapper.queryForObject("payment_cash.selectCash_use", my_id);
		}
		return SUCCESS;
	}

	public String getMy_id() {
		return my_id;
	}

	public void setMy_id(String my_id) {
		this.my_id = my_id;
	}
	
	@Override
	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}

	public int getCash() {
		return cash;
	}
}