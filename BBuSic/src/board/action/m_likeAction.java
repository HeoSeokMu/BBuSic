package board.action;

import upload.dto.likeDTO;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;

import BBusic.Aware.musicAware;

public class m_likeAction implements Action, musicAware{
	
	public static SqlMapClient sqlMapper;
	
	private static likeDTO lDTO;
	
	private String id;
	private String category;
	private int num;
	private String singer;
	
	private int check; //연산결과 : 0이면 false 1이면 true

	public String execute() throws Exception {
		
		lDTO = new likeDTO();
		System.out.println("singer m_ : " + singer);
		
		System.out.println("id : " + id);
		System.out.println("num : " + num);
		
		lDTO.setId(getId());
		lDTO.setNum(getNum());
		
		sqlMapper.update("musicSQL.musicHitUp", num);	//쿼리 문제X
		sqlMapper.insert("musicSQL.insertMHit", lDTO);	//쿼리 문제X
		
		if(category.equals("album")){
			return "album";
		}else if(category.equals("singer")){
			return "singer";
		}else if(category.equals("chart")){
			return "chart";
		}else if(category.equals("new")){
			return "new";
		}else if(category.equals("genre")){
			return "genre";
		}else if(category.equals("lyrics")){
			return "lyrics";
		}else{return SUCCESS;} /*if(category.equals("")){
			
		}*/
	}
	
	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}
	
	public int getCheck() {
		return check;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getSinger() {
		return singer;
	}
	public void setSinger(String singer) {
		this.singer = singer;
	}
	
}
