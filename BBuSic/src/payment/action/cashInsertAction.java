package payment.action;

import java.util.Map;

import member.DTO.MemberDTO;

import org.apache.struts2.interceptor.SessionAware;

import payment.pay_setDTO.cash_DTO;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class cashInsertAction implements Action, Preparable, ModelDriven, BBuSicAware{
	
	cash_DTO cDTO;
	private SqlMapClient sqlMapper;
	private String id;
	
	@Override
	public String execute() throws Exception {
		cDTO.setCash_id(id);
		sqlMapper.insert("payment_cash.insertCash", cDTO);
		return SUCCESS;
	}
	
	@Override
	public void prepare() throws Exception {
		cDTO = new cash_DTO();
	}
	
	@Override
	public Object getModel() {
		return cDTO;
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
		System.out.println("id : "+id);
	}
}
