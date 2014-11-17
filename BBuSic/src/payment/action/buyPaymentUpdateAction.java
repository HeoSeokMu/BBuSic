package payment.action;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import payment.pay_setDTO.buyInfo_DTO;
import payment.pay_setDTO.cashCharge_DTO;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class buyPaymentUpdateAction implements Action, Preparable, ModelDriven, BBuSicAware {
	
	buyInfo_DTO buy_DTO;
	cashCharge_DTO cash_DTO;
	private int cash_in;
	private int delete_cash;
	
	public static SqlMapClient sqlMapper;
	
	public String execute() throws Exception {
		System.out.println("buyPamentUpdate ===============================");
		System.out.println(buy_DTO.getBuy_id());
		System.out.println(buy_DTO.getPay_name());
		System.out.println(buy_DTO.getPay_benefit());
		System.out.println(buy_DTO.getAmount());
		System.out.println(buy_DTO.getPayment());
		System.out.println("cash_in : "+cash_in);
		
		// 유효기간 설정
		Calendar date = Calendar.getInstance();
		date.set(Calendar.MONTH, date.get(Calendar.MONTH));
		date.set(Calendar.DATE, date.getActualMaximum(Calendar.DATE)+1);
		date.set(Calendar.HOUR, 0);
		date.set(Calendar.MINUTE, 0);
		date.set(Calendar.SECOND, 0);
		Date expirationDate = date.getTime();
		
		Calendar today = Calendar.getInstance();
		Date cashuseDate = today.getTime();
		
		if(cash_in > 0) {
			cash_DTO = new cashCharge_DTO();
			cash_DTO.setCash_id(buy_DTO.getBuy_id());
			cash_DTO.setCashuse_date(cashuseDate);
			cash_DTO.setContent("상품구매");
			cash_DTO.setExpiration_date(expirationDate);
			cash_DTO.setSub_cash(cash_in);
			cash_DTO.setDelete_cash(delete_cash - cash_in);
			sqlMapper.update("payment_cash.updateChargeCash_delete", cash_DTO);
			cash_DTO.setCash(delete_cash - cash_in);
			sqlMapper.insert("payment_cash.insertCashInfo", cash_DTO);
		}
		
		buy_DTO.setDelete_payname(buy_DTO.getPay_name());
		buy_DTO.setDelete_paybenefit(buy_DTO.getPay_benefit());
		buy_DTO.setSettlement_date(cashuseDate);
		buy_DTO.setExpiration_date(expirationDate);
		sqlMapper.insert("payment_buy.insertBuyInfo", buy_DTO);
		
		long l =  expirationDate.getTime() - cashuseDate.getTime();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
		System.out.println("날짜 : " + sdf.format(cashuseDate));
		System.out.println("유효기간 : " + sdf.format(expirationDate));
		
		//long minute = (l / 1000) / 60; 	// 분
		//long hour = (l / 1000) / (60*60); // 시간
		//long day = (l / 1000) / (60*60*24); // 일
		//long month = (l / 1000) / (60*60*24*lastday); // 월
		/*
		if(day1 > 0) {
			System.out.println("prev : "+sdf.format(prev)+" / "+"t2 : "+sdf.format(t2.getTime()));
		}
		*/
		
		return SUCCESS;
	}

	@Override
	public void prepare() throws Exception {
		buy_DTO = new buyInfo_DTO(); 
	}
	
	@Override
	public Object getModel() {
		return buy_DTO;
	}
	
	@Override
	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}

	public buyInfo_DTO getBuy_DTO() {
		return buy_DTO;
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
