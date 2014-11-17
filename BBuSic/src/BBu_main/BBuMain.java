package BBu_main;

import payment.action.BBuSicAware;
import payment.pay_setDTO.payMyInfo_DTO;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;

public class BBuMain implements Action, BBuSicAware{
	payMyInfo_DTO myinfo_DTO;
	public static SqlMapClient sqlMapper;
	private String id; 
	
	public String execute() throws Exception {
		
		System.out.println("id : "+id);
		System.out.println("id : "+(id != null));
		if(id != null) {
			myinfo_DTO = new payMyInfo_DTO();
			System.out.println(sqlMapper);
			myinfo_DTO = (payMyInfo_DTO)sqlMapper.queryForObject("payment_my.selectMyInfo", id);
			System.out.println("myinfoID : "+myinfo_DTO.getId());
			System.out.println("myinfoCash : "+myinfo_DTO.getCash());
			System.out.println("myinDownC : "+myinfo_DTO.getDownload_count());
			System.out.println("myinfoPay_N : "+myinfo_DTO.getDelete_payname());
			System.out.println("myinfoPay_B : "+myinfo_DTO.getDelete_paybenefit());
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
