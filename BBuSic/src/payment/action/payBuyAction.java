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

public class payBuyAction implements Action, BBuSicAware {
	
	public static SqlMapClient sqlMapper;
	private String type; 
	private List categorylist = new ArrayList();
	private List<pay_DTO> paylist = new ArrayList<pay_DTO>();
	
	public String execute() throws Exception {
		
		categorylist = sqlMapper.queryForList("selectCategory");
		paylist = sqlMapper.queryForList("selectCategory");
		
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
}
