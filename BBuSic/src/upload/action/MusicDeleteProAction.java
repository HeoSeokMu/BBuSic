package upload.action;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;

import BBusic.Aware.musicAware;

public class MusicDeleteProAction implements Action, musicAware{
	
	public static SqlMapClient sqlMapper; //SqlMapClient API�� ����ϱ� ���� sqlMapper ��ü.
	
	private String title;

	public String execute() throws Exception {
		
		sqlMapper.delete("musicSQL.deleteMusic", title);
		
		return SUCCESS;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}
}
