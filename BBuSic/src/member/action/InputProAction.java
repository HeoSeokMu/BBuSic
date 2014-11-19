package member.action;

import java.util.Calendar;
import java.util.Date;

import payment.pay_setDTO.buyInfo_DTO;
import payment.pay_setDTO.cashCharge_DTO;
import member.DTO.MemberDTO;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;


public class InputProAction implements MemberAware, Action, Preparable, ModelDriven{
	Calendar today = Calendar.getInstance();
	public static SqlMapClient sqlMapper;
	MemberDTO mDTO;
	
	//////////////////////////////////////////////
	cashCharge_DTO cash_DTO;
	buyInfo_DTO buy_DTO;
	/////////////////////////////////////////////
	
	public String execute() throws Exception {
		mDTO.setRegdate(today.getTime());
		sqlMapper.insert("member.insertMember", mDTO);
		
		/////////////////////////////////////
		Calendar today = Calendar.getInstance();
		String content = "없음";
		
		cash_DTO = new cashCharge_DTO();
		cash_DTO.setCash_id(mDTO.getId());
		cash_DTO.setCashuse_date(today.getTime());
		cash_DTO.setContent(content);
		cash_DTO.setCash(0);
		cash_DTO.setSub_cash(0);
		cash_DTO.setDelete_cash(0);
		cash_DTO.setExpiration_date(today.getTime());
		sqlMapper.insert("payment_cash.insertCashInfo", cash_DTO);
		
		buy_DTO = new buyInfo_DTO();
		buy_DTO.setBuy_id(mDTO.getId());
		buy_DTO.setPay_name("보유한 상품이 없습니다.");
		buy_DTO.setPay_benefit("없음");
		buy_DTO.setDelete_payname("보유한 상품이 없습니다.");
		buy_DTO.setDelete_paybenefit("없음");
		buy_DTO.setSettlement_date(today.getTime());
		buy_DTO.setExpiration_date(today.getTime());
		buy_DTO.setPayment(0);
		buy_DTO.setDownload_count(0);
		buy_DTO.setAmount(0);
		buy_DTO.setBuy_option("없음");
		sqlMapper.insert("payment_buy.insertBuyInfo", buy_DTO);
		
		return SUCCESS;
	}

	public void prepare() throws Exception {
		mDTO = new MemberDTO();
	}
	
	public Object getModel() {
		return mDTO;
	}
	
	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}
}
