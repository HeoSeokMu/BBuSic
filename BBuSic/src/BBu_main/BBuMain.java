package BBu_main;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;

import payment.action.BBuSicAware;
import payment.pay_setDTO.buyInfo_DTO;
import payment.pay_setDTO.cashCharge_DTO;
import payment.pay_setDTO.payMyInfo_DTO;

public class BBuMain implements Action, BBuSicAware {
	payMyInfo_DTO myinfo_DTO;
	buyInfo_DTO buy_DTO;
	cashCharge_DTO cash_DTO;
	public static SqlMapClient sqlMapper;
	private String id;

	public String execute() throws Exception {

		System.out.println("id : " + id);
		System.out.println("id : " + (id != null));
		if (id != null) {
			myinfo_DTO = new payMyInfo_DTO();
			/*
			buy_DTO = new buyInfo_DTO();
			cash_DTO = new cashCharge_DTO();
			
			buy_DTO = (buyInfo_DTO)sqlMapper.queryForObject("payment_my.selectMyInfo", id);
			long buy_date = buy_DTO.getExpiration_date().getTime() - buy_DTO.getSettlement_date().getTime();
			if(buy_date <= 0) {
				sqlMapper.update("", buy_DTO.getSettlement_date());
			}
			
			cash_DTO = (cashCharge_DTO)sqlMapper.queryForObject("payment_my.selectMyInfo", id);
			long cash_date = cash_DTO.getExpiration_date().getTime() - cash_DTO.getCashuse_date().getTime();
			if(cash_date <= 0) {
				sqlMapper.update("", cash_DTO.getCashuse_date());
			}
			*/
			
			myinfo_DTO = (payMyInfo_DTO)sqlMapper.queryForObject("payment_my.selectMyInfo", id);
		}

		return SUCCESS;
	}

	@Override
	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public payMyInfo_DTO getMyinfo_DTO() {
		return myinfo_DTO;
	}
}
