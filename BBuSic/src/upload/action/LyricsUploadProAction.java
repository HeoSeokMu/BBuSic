package upload.action;

import java.io.IOException;
import java.io.Reader;

import upload.dto.lyricsDTO;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.Action;

public class LyricsUploadProAction implements Action{
	
	public static Reader reader; //파일 스트림을 위한 reader.
	public static SqlMapClient sqlMapper; //SqlMapClient API를 사용하기 위한 sqlMapper 객체.
	
	private lyricsDTO paramClass;
	
	private String name;
	private String lyrics;
	
	public LyricsUploadProAction() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml 파일의 설정내용을 가져온다.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); // sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성.
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
