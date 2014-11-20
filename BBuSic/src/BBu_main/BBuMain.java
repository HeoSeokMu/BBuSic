package BBu_main;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;

import payment.action.BBuSicAware;
import payment.pay_setDTO.payMyInfo_DTO;

public class BBuMain implements Action, BBuSicAware, ServletRequestAware, ServletResponseAware {
	payMyInfo_DTO myinfo_DTO;
	public static SqlMapClient sqlMapper;
	private String id;
	private String cooId = null;
	private HttpServletResponse res;
	private HttpServletRequest req;
	
	public String execute() throws Exception {
		Cookie[] cookies = req.getCookies();
		if(cookies != null){
			for(int i=0;i<cookies.length; i++){
				if(cookies[i].getName().equals("memId")){
					System.out.println("cookie=" + cookies[i].getValue());
					cooId = cookies[i].getValue();
				}
			}
		}
		
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
	
	public String getCooId() {
		return cooId;
	}

	public payMyInfo_DTO getMyinfo_DTO() {
		return myinfo_DTO;
	}
	
	public void setServletResponse(HttpServletResponse res) {
		this.res = res;
	}

	public void setServletRequest(HttpServletRequest req) {
		this.req = req;
	}
}
