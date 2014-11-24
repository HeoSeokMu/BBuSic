package payment.action;


import payment.pay_setDTO.pay_DTO;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class payInsertAction implements Action, Preparable, ModelDriven, BBuSicAware {
	
	pay_DTO payDTO;
	public static SqlMapClient sqlMapper;
	
	public String execute() throws Exception {
		
		payDTO = new pay_DTO();
		
		sqlMapper.insert("payment.insertPay", payDTO);
		
		
		
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
	
	@Override
	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}
}
