package payment.action;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;

public class cashChargeAction implements Action, BBuSicAware {
	
	private int delete_cash;
	private String my_id;
	public SqlMapClient sqlMapper;
	
	public String execute() throws Exception {
		
		System.out.println("cashChargeAction ===================================================");
		System.out.println("my_id : "+my_id);
		if(my_id.equals(" ") || my_id != null) {
			delete_cash = (int)sqlMapper.queryForObject("payment_cash.selectCash_use", my_id);
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

	public int getDelete_cash() {
		return delete_cash;
	}
}