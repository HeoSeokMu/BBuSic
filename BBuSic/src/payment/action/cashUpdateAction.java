package payment.action;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import payment.pay_setDTO.cashCharge_DTO;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class cashUpdateAction implements Action, Preparable, ModelDriven, BBuSicAware {
	
	cashCharge_DTO cash_DTO;
	private int money_in;
	
	public static SqlMapClient sqlMapper;
	
	public String execute() throws Exception {
		System.out.println("cashUpdateAction ===============================");
		System.out.println(cash_DTO.getCash_id());
		System.out.println(cash_DTO.getCash());
		System.out.println(cash_DTO.getDelete_cash());
		System.out.println(cash_DTO.getContent());
		
		// 유효기간 설정
		Calendar date = Calendar.getInstance();
		date.set(Calendar.MONTH, date.get(Calendar.MONTH));
		date.set(Calendar.DATE, date.getActualMaximum(Calendar.DATE)+1);
		date.set(Calendar.HOUR, 0);
		date.set(Calendar.MINUTE, 0);
		date.set(Calendar.SECOND, 0);
		Date expirationDate = date.getTime();
		
		// 캐쉬 충전일자
		Calendar today = Calendar.getInstance();
		Date cashuseDate = today.getTime();
		
		long l =  expirationDate.getTime() - cashuseDate.getTime();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
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
		cash_DTO.setCashuse_date(cashuseDate);
		cash_DTO.setExpiration_date(expirationDate);
		
		cash_DTO.setDelete_cash(money_in + cash_DTO.getDelete_cash());
		sqlMapper.update("payment_cash.updateChargeCash_delete", cash_DTO);
		cash_DTO.setCash(money_in);
		sqlMapper.insert("payment_cash.insertCashInfo", cash_DTO);
		
		return SUCCESS;
	}

	@Override
	public void prepare() throws Exception {
		cash_DTO = new cashCharge_DTO(); 
	}
	
	@Override
	public Object getModel() {
		return cash_DTO;
	}
	
	@Override
	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}

	public cashCharge_DTO getCash_DTO() {
		return cash_DTO;
	}

	public int getMoney_in() {
		return money_in;
	}

	public void setMoney_in(int money_in) {
		this.money_in = money_in;
	}
}