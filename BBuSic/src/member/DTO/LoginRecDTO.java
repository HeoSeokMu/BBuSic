package member.DTO;

import java.util.Date;

public class LoginRecDTO {
	private String id;
	private String ip;
	private String login_result;
	private Date login_date;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getLogin_result() {
		return login_result;
	}
	public void setLogin_result(String login_result) {
		this.login_result = login_result;
	}
	public Date getLogin_date() {
		return login_date;
	}
	public void setLogin_date(Date login_date) {
		this.login_date = login_date;
	}
	
}