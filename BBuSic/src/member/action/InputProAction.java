package member.action;

import java.util.Calendar;

import member.DTO.*;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;


public class InputProAction implements MemberAware, Action, Preparable, ModelDriven{
	Calendar today = Calendar.getInstance();
	public static SqlMapClient sqlMapper;
	MemberDTO mDTO;
	
	public String execute() throws Exception {
		mDTO.setRegdate(today.getTime());
		sqlMapper.insert("insertMember", mDTO);
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
}
