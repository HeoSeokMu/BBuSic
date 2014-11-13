package payment.action;

import payment.pay_setDTO.payMyInfo_DTO;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class payMyInfo_selectAction implements Action, Preparable, ModelDriven, BBuSicAware {
	
	payMyInfo_DTO myInfo_DTO;
	public static SqlMapClient sqlMapper;
	
	public String execute() throws Exception {
				
		myInfo_DTO = (payMyInfo_DTO)sqlMapper.queryForObject("payment_my.selectMyInfo", myInfo_DTO);
		
		return SUCCESS;
	}
	
	@Override
	public void prepare() throws Exception {
		myInfo_DTO = new payMyInfo_DTO();
	}
	
	@Override
	public Object getModel() {
		// TODO Auto-generated method stub
		return myInfo_DTO;
	}
	
	@Override
	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}
}
