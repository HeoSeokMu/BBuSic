package payment.action;

import java.sql.Timestamp;

import payment.pay_setDTO.payMyInfo_DTO;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class cashUpdateAction implements Action, Preparable, ModelDriven, BBuSicAware {
	
	payMyInfo_DTO myinfo_DTO;
	public static SqlMapClient sqlMapper;
	
	public String execute() throws Exception {
		System.out.println("cashUpdateAction ===============================");
		System.out.println(myinfo_DTO.getMy_id());
		System.out.println(myinfo_DTO.getCash());
		
		sqlMapper.update("payment_my.updateChargeCash", myinfo_DTO);
		
		return SUCCESS;
	}

	@Override
	public void prepare() throws Exception {
		myinfo_DTO = new payMyInfo_DTO(); 
	}
	
	@Override
	public Object getModel() {
		return myinfo_DTO;
	}
	
	@Override
	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}

	public payMyInfo_DTO getMyinfo_DTO() {
		return myinfo_DTO;
	}
}