package payment.action;

import payment.pay_setDTO.payMyInfo_DTO;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class payMyInfo_InsertAction implements Action, BBuSicAware{
	
	payMyInfo_DTO m_DTO;
	private SqlMapClient sqlMapper;
	private String id;
	
	@Override
	public String execute() throws Exception {
		m_DTO = new payMyInfo_DTO();
		m_DTO.setMy_id(id);
		m_DTO.setPay_name("보유중인 상품이 없습니다.");
		sqlMapper.insert("payment_my.insertMyInfo", m_DTO);
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
		System.out.println("id : "+id);
	}
}
