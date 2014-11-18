package member.action;

import java.util.ArrayList;
import java.util.List;

import member.DTO.MemberDTO;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;

public class ConfirmNickAction implements Action, MemberAware{

	private SqlMapClient sqlMapper;
	private String nickname;
	private int check = 0;
	private List<MemberDTO> list;
	private List<String> nickList = new ArrayList<String>();
	
	public String execute() throws Exception {
		list = sqlMapper.queryForList("member.selectNick");
		for(MemberDTO dt : list) {
			nickList.add(dt.getNickname());
		}
		
		if(nickList.contains(nickname)){
			check = 1;	//중복된 닉네임이 있는경우
		}else{
			check = 0;	//중복된 닉네임이 없는경우
		}
		return SUCCESS;
	}

	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}

	public void setNickname(String nickname){
		this.nickname = nickname;
	}
	public String getNickname(){
		return nickname;
	}
	public int getCheck(){
		return check;
	}
}