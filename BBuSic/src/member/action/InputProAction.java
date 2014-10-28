package member.action;

import java.util.Calendar;

import payment.pay_setDTO.cash_DTO;
import member.DTO.MemberDTO;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;


public class InputProAction implements MemberAware, Action, Preparable, ModelDriven{
	Calendar today = Calendar.getInstance();
	public static SqlMapClient sqlMapper;
	MemberDTO mDTO;
	cash_DTO cashDTO;
	
	public String execute() throws Exception {
		/*
		cashDTO = new cash_DTO();
		
		cashDTO.setCash_id(mDTO.getId());
		cashDTO.setCash(0);
		*/
		
		mDTO.setRegdate(today.getTime());
		sqlMapper.insert("insertMember", mDTO);
		//sqlMapper.insert("payment_cash.insertCash", cashDTO);
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
