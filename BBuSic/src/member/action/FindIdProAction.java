package member.action;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.List;

import member.DTO.MemberDTO;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class FindIdProAction implements Action, ModelDriven, Preparable, MemberAware{
	MemberDTO mDTO;
	private SqlMapClient sqlMapper;
	private String subId;
	private String fullId;
	private String date;
	private MemberDTO dt;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	public String execute() throws Exception {
		
		dt = (MemberDTO) sqlMapper.queryForObject("member.findID", mDTO);
		date = sdf.format(dt.getRegdate());
		
		if(dt != null){
			fullId = dt.getId();
			subId = dt.getId().substring(0, 4);
		}
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
	
	public String getSubId(){
		return subId;
	}
	
	public String getDate(){
		return date;
	}
	
	public String getFullId(){
		return fullId;
	}
}
