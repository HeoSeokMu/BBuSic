package member.action;

import java.text.SimpleDateFormat;
import java.util.Date;

import member.DTO.MemberDTO;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class resetPasswdProAction implements Action, MemberAware, Preparable, ModelDriven{
	String date;
	String Sdate;
	MemberDTO mDTO;
	private SqlMapClient sqlMapper;
	java.sql.Timestamp t;
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	public String execute() throws Exception {
		Sdate = (String) sqlMapper.queryForObject("member.resetPw", mDTO);
		t = java.sql.Timestamp.valueOf(Sdate);
		date = sdf.format(t);
		return SUCCESS;
	}

	public void prepare() throws Exception {
		mDTO = new MemberDTO();
	}
	
	public Object getModel() {
		return mDTO;
	}

	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}
	
	public String getDate(){
		return date;
	}
}