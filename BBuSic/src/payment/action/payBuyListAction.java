package payment.action;

import java.util.ArrayList;
import java.util.List;

import payment.pay_setDTO.pay_DTO;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;


public class payBuyListAction implements Action, BBuSicAware {
	
	public SqlMapClient sqlMapper;
	private String type;
	private String buy_id;
	private String check;
	private List<String> categorylist = new ArrayList<String>();
	private List<pay_DTO> paylist = new ArrayList<pay_DTO>();
	
	
	public String execute() throws Exception {
		String category = "";
		
		System.out.println("payBuyListAction=================================");
		System.out.println("buy_id : " + buy_id);
		
		categorylist = sqlMapper.queryForList("payment.selectCategory");
		System.out.println("categorylist size : "+categorylist.size());
		paylist = sqlMapper.queryForList("payment.selectPay");
		System.out.println("paylist size : "+paylist.size());
		
		return SUCCESS;
	}
	
	@Override
	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public List<String> getCategorylist() {
		return categorylist;
	}
	public List<pay_DTO> getPaylist() {
		return paylist;
	}

	public String getBuy_id() {
		return buy_id;
	}

	public void setBuy_id(String buy_id) {
		this.buy_id = buy_id;
	}

	public String getCheck() {
		return check;
	}
}
