package upload.action;

import java.io.IOException;
import java.io.Reader;

import upload.dto.lyricsDTO;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.Action;

public class LyricsUploadProAction implements Action{
	
	public static Reader reader; //���� ��Ʈ���� ���� reader.
	public static SqlMapClient sqlMapper; //SqlMapClient API�� ����ϱ� ���� sqlMapper ��ü.
	
	private lyricsDTO paramClass;
	
	private String name;
	private String lyrics;
	
	public LyricsUploadProAction() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml ������ ���������� �����´�.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); // sqlMapConfig.xml�� ������ ������ sqlMapper ��ü ����.
		reader.close();
	}
	
	public String execute() throws Exception {
		paramClass = new lyricsDTO();
		
		paramClass.setName(getName());
		paramClass.setLyrics(getLyrics());
		
		sqlMapper.insert("musicSQL.insertLyrics", paramClass);
		
		return SUCCESS;
	}

	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}

	public static void setSqlMapper(SqlMapClient sqlMapper) {
		LyricsUploadProAction.sqlMapper = sqlMapper;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLyrics() {
		return lyrics;
	}

	public void setLyrics(String lyrics) {
		this.lyrics = lyrics;
	}

	public lyricsDTO getParamClass() {
		return paramClass;
	}

	public void setParamClass(lyricsDTO paramClass) {
		this.paramClass = paramClass;
	}

	
}
