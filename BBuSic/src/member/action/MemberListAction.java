package member.action;

import java.util.ArrayList;
import java.util.List;

import member.DTO.MemListDTO;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;

public class MemberListAction implements Action, MemberAware{

	private SqlMapClient sqlMapper;
	private List<MemListDTO> list = new ArrayList<MemListDTO>();
	
	public String execute() throws Exception {
		list = sqlMapper.queryForList("memList.selectMemList");
		return SUCCESS;
	}

	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}

	public List<MemListDTO> getList(){
		return list;
	}
}
