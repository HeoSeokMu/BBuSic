package upload.action;

import java.io.IOException;
import java.io.Reader;

import upload.dto.singerDTO;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.Action;

public class SingerUploadProAction implements Action{

	public static Reader reader; //���� ��Ʈ���� ���� reader.
	public static SqlMapClient sqlMapper; //SqlMapClient API�� ����ϱ� ���� sqlMapper ��ü.
	
	private singerDTO paramClass;
	
	private String singer;
	private String year;
	private String birth;
	private String maingenre;
	private String entertain;
	
	public SingerUploadProAction() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml ������ ���������� �����´�.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); // sqlMapConfig.xml�� ������ ������ sqlMapper ��ü ����.
		reader.close();
	}
		
	public String execute() throws Exception {
		paramClass = new singerDTO();
		
		paramClass.setSinger(getSinger());
		paramClass.setYear(getYear());
		paramClass.setBirth(getBirth());
		paramClass.setMaingenre(getMaingenre());
		paramClass.setEntertain(getEntertain());
		paramClass.setP_hit(0);
		
		sqlMapper.insert("musicSQL.insertSinger", paramClass);
		
		return SUCCESS;
	}

	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}

	public static void setSqlMapper(SqlMapClient sqlMapper) {
		SingerUploadProAction.sqlMapper = sqlMapper;
	}

	public singerDTO getParamClass() {
		return paramClass;
	}

	public void setParamClass(singerDTO paramClass) {
		this.paramClass = paramClass;
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

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getMaingenre() {
		return maingenre;
	}

	public void setMaingenre(String maingenre) {
		this.maingenre = maingenre;
	}

	public String getEntertain() {
		return entertain;
	}

	public void setEntertain(String entertain) {
		this.entertain = entertain;
	}

	
}
