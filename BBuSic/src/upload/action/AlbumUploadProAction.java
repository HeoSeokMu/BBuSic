package upload.action;

import java.io.IOException;
import java.io.Reader;

import upload.dto.albumDTO;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.Action;

public class AlbumUploadProAction implements Action {
	
	public static Reader reader; //���� ��Ʈ���� ���� reader.
	public static SqlMapClient sqlMapper; //SqlMapClient API�� ����ϱ� ���� sqlMapper ��ü.
	
	private albumDTO paramClass;
	
	private String name;
	private String singer;
	private String year;
	private String publisher;
	private String entertain;
	private String genre;
	
	//������
	public AlbumUploadProAction() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml ������ ���������� �����´�.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); // sqlMapConfig.xml�� ������ ������ sqlMapper ��ü ����.
		reader.close();
	}
	
	public String execute() throws Exception {
		paramClass = new albumDTO();
		
		paramClass.setName(getName());
		paramClass.setSinger(getSinger());
		paramClass.setYear(getYear());
		paramClass.setPublisher(getPublisher());
		paramClass.setEntertain(getEntertain());
		paramClass.setGenre(getGenre());
		
		sqlMapper.insert("musicSQL.insertAlbum", paramClass);
		
		return SUCCESS;
	}

	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}

	public static void setSqlMapper(SqlMapClient sqlMapper) {
		AlbumUploadProAction.sqlMapper = sqlMapper;
	}

	public albumDTO getParamClass() {
		return paramClass;
	}

	public void setParamClass(albumDTO paramClass) {
		this.paramClass = paramClass;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSinger() {
		return singer;
	}

	public void setSinger(String singer) {
		this.singer = singer;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getEntertain() {
		return entertain;
	}

	public void setEntertain(String entertain) {
		this.entertain = entertain;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	
}
