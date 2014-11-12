package member.action;

import java.text.SimpleDateFormat;
import java.util.Date;

import member.DTO.MemberDTO;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class resetPasswdProAction implements Action, MemberAware, Preparable, ModelDriven{
	Date Ddate;
	String date;
	MemberDTO mDTO;
	private SqlMapClient sqlMapper;
	java.sql.Timestamp t;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	public String execute() throws Exception {
		System.out.println(mDTO.getEmail());
		System.out.println(mDTO.getId());
		System.out.println(mDTO.getName());
		date = (String) sqlMapper.queryForObject("member.resetPw", mDTO);
		System.out.println(date);
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