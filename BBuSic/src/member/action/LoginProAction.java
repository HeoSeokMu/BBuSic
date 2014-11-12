package member.action;


import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import member.DTO.LoginRecDTO;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

import payment.pay_setDTO.*;

public class LoginProAction extends ActionSupport implements SessionAware, MemberAware, ServletRequestAware{
	private int check;
	private Map session;
	private String id;
	private String passwd;
	private String passwd2;
	private LoginRecDTO rDTO;
	
	//////////////////////////////////////////
	payMyInfo_DTO myinfo_DTO;
	List<payMyInfo_DTO> myinfo = new ArrayList<payMyInfo_DTO>();
	/////////////////////////////////////////
	
	public static SqlMapClient sqlMapper;
	private HttpServletRequest req;
	Calendar today = Calendar.getInstance();

	public String execute() throws Exception {
		rDTO = new LoginRecDTO();
		
		passwd2 = (String)sqlMapper.queryForObject("member.selectPasswd", id);
		System.out.println(req);
		System.out.println(req.getRemoteAddr());
		rDTO.setIp(req.getRemoteAddr());
		rDTO.setLogin_date(today.getTime());
		rDTO.setId(id);
		
		if(passwd.equals(passwd2)){
			session.put("memId", id);
			rDTO.setLogin_result("성공");
			
			// 결제관련 소스 추가 /////////////////////////////////////////////////
			myinfo_DTO = new payMyInfo_DTO();
			myinfo_DTO = (payMyInfo_DTO)sqlMapper.queryForObject("payment_my.selectMyInfo", id);
			System.out.println("myinfoID : "+myinfo_DTO.getId());
			System.out.println("myinfoCash : "+myinfo_DTO.getCash());
			System.out.println("myinDownC : "+myinfo_DTO.getDownload_count());
			System.out.println("myinfoPay_N : "+myinfo_DTO.getPay_name());
			System.out.println("myinfoPay_B : "+myinfo_DTO.getPay_benefit());
			/////////////////////////////////////////////////////////////////
			
			check = 0;
		}else{
			rDTO.setLogin_result("실패");
			check = 1;
		}
		sqlMapper.insert("login.record", rDTO);
		
		System.out.println("check : "+check);
		return SUCCESS;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	public void setId(String id){
		this.id = id;
	}
	
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	
	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}

	public int getCheck() {
		return check;
	}

	public void setServletRequest(HttpServletRequest req) {
		this.req = req;
	}

	public payMyInfo_DTO getMyinfo_DTO() {
		return myinfo_DTO;
	}
}