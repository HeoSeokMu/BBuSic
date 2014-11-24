package payment.action;

import java.util.ArrayList;
import java.util.List;

import member.DTO.MemberDTO;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;

public class ConfirmBuyAction implements Action, BBuSicAware{

	private SqlMapClient sqlMapper;
	private String check = "pass";
	private List<String> buyInfo_List = new ArrayList<String>();
	private String pay_name;
	private String buy_id;
	private String pay_benefit;
	private int amount;
	private int sale;
	private String download_count;
	private String buy_type;

	public String execute() throws Exception {
		System.out.println("ConfirmBuyAction ==============================");
		System.out.println(buy_id);
		System.out.println(pay_name);
		
		System.out.println(sqlMapper);

		if(buy_id != null) {
			buyInfo_List = sqlMapper.queryForList("payment_buy.selectBuyInfo_payInfo", buy_id);
			
			if(buyInfo_List.contains(pay_name)) {
				check = "using";
			} else {
				check = "pass";
			}
		}
		System.out.println("check : " + check);
				
		return SUCCESS;
	}

	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}

	public String getCheck() {
		return check;
	}

	public String getBuy_id() {
		return buy_id;
	}

	public void setBuy_id(String buy_id) {
		this.buy_id = buy_id;
	}

	public String getPay_name() {
		return pay_name;
	}

	public void setPay_name(String pay_name) {
		this.pay_name = pay_name;
	}

	public String getPay_benefit() {
		return pay_benefit;
	}

	public void setPay_benefit(String pay_benefit) {
		this.pay_benefit = pay_benefit;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getSale() {
		return sale;
	}

	public void setSale(int sale) {
		this.sale = sale;
	}

	public String getDownload_count() {
		return download_count;
	}

	public void setDownload_count(String download_count) {
		this.download_count = download_count;
	}

	public String getBuy_type() {
		return buy_type;
	}

	public void setBuy_type(String buy_type) {
		this.buy_type = buy_type;
	}
}