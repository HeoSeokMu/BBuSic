package member.action;

import java.util.ArrayList;
import java.util.List;

import member.DTO.MemberDTO;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;

public class ConfirmIdAction implements Action, MemberAware{

	private SqlMapClient sqlMapper;
	private String id;
	private int check = 0;
	private List<MemberDTO> list;
	private List<String> idList = new ArrayList<String>();
	
	public String execute() throws Exception {
		list = sqlMapper.queryForList("member.selectId");
		for(MemberDTO dt : list) {
			idList.add(dt.getId());
		}
		
		if(idList.contains(id)){
			check = 1;	//�ߺ��� ���̵� �ִ°��
		}else{
			check = 0;	//�ߺ��� ���̵� ���°��
		}
		return SUCCESS;
	}

	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}

	public void setId(String id){
		this.id = id;
	}
	public String getId(){
		return id;
	}
	public int getCheck(){
		return check;
	}
}