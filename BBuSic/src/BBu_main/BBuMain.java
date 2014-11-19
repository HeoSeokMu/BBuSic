package BBu_main;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;

import payment.action.BBuSicAware;
import payment.pay_setDTO.payMyInfo_DTO;

public class BBuMain implements Action, BBuSicAware {
	payMyInfo_DTO myinfo_DTO;
	public static SqlMapClient sqlMapper;
	private String id;

	public String execute() throws Exception {

		System.out.println("id : " + id);
		System.out.println("id : " + (id != null));
		if (id != null) {
			myinfo_DTO = new payMyInfo_DTO();
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
