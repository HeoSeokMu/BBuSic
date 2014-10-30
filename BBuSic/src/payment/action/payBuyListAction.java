package payment.action;

import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import payment.pay_setDTO.pay_DTO;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class payBuyListAction implements Action, BBuSicAware {
	
	public SqlMapClient sqlMapper;
	private String type; 
	private List<String> categorylist = new ArrayList<String>();
	private List<pay_DTO> paylist = new ArrayList<pay_DTO>();
	
	public String execute() throws Exception {
		String category = "";
		
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
}
