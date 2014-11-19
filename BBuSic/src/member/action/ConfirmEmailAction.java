package member.action;

import java.util.ArrayList;
import java.util.List;

import member.DTO.MemberDTO;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;

public class ConfirmEmailAction implements Actio n, MemberAware{

	private SqlMapClient sqlMapper;
	private String email;
	private int check = 0;
	private List<MemberDTO> list;
	private List<String> emailList = new ArrayList<String>();
	
	public String execute() throws Exception {
		list = sqlMapper.queryForList("member.selectEmail");
		for(MemberDTO dt : list) {
			emailList.add(dt.getEmail());
		}
		
		if(emailList.contains(email)){
			check = 1;	//중복된 이메일이 있는경우
		}else{
			check = 0;	//중복된 이메일이 없는경우
		}
		return SUCCESS;
	}

	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}

	public void setEmail(String email){
		this.email = email;
	}
	public String getEmail(){
		return email;
	}
	public int getCheck(){
		return check;
	}
}