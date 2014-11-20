package member.action;

import java.util.ArrayList;
import java.util.List;

import member.DTO.MemListDTO;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;

public class MyLoginListProAction implements Action, MemberAware{
	private String id;
	private SqlMapClient sqlMapper;
	private List<MemListDTO> list = new ArrayList<MemListDTO>();
	
	public String execute() throws Exception {
		list = sqlMapper.queryForList("login.selectLoginList", id);
		return SUCCESS;
	}

	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}

	public List<MemListDTO> getList(){
		return list;
	}
	
	public void setId(String id){
		this.id = id;
	}
}
