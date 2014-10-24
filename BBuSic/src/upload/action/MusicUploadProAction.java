package upload.action;

import java.io.File;
import java.io.IOException;
import java.io.Reader;

import org.apache.commons.io.FileUtils;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import upload.dto.*;

public class MusicUploadProAction extends ActionSupport implements Preparable,
		ModelDriven {
	public static Reader reader; //파일 스트림을 위한 reader.
	public static SqlMapClient sqlMapper; //SqlMapClient API를 사용하기 위한 sqlMapper 객체.
	
	musicDTO mDTO;
	
	private File upload; //파일 객체
	private String uploadContentType; //컨텐츠 타입
	private String uploadFileName; //파일 이름
	private String fileUploadPath = "C:Users\\user1\\Desktop\\music\\WebContent\\images\\"; //업로드 경로.
	
	private musicDTO resultClass; //쿼리 결과 값을 저장할 객체
	
	private String file_orgName; //업로드 파일의 원래 이름
	private String file_savName; //서버에 저장할 업로드 파일의 이름. 고유 번호로 구분한다.
	
	
	public MusicUploadProAction() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml 파일의 설정내용을 가져온다.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); // sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성.
		reader.close();
	}
	
	@Override
	public String execute() throws Exception {
		
		//파라미터와 리절트 객체 생성.
		resultClass = new musicDTO();
		
		
		if (getUpload() != null) {

			//등록한 글 번호 가져오기.
			resultClass = (musicDTO) sqlMapper.queryForObject("selectLastNum");

			//실제 서버에 저장될 파일 이름과 확장자 설정.
			int fileNumber = resultClass.getNum();
			
			String file_name = "file_" +(fileNumber+1);
			String file_ext = getUploadFileName().substring(
					getUploadFileName().lastIndexOf('.') + 1,
					getUploadFileName().length());

			//서버에 파일 저장.
			File destFile = new File(fileUploadPath + file_name + "."
					+ file_ext);
			FileUtils.copyFile(getUpload(), destFile);

			//파일 정보 파라미터 설정.
			mDTO.setNum(resultClass.getNum());
			mDTO.setMusic_name(file_name + "." + file_ext);		//서버에 저장할 파일 이름
			
			sqlMapper.insert("insertMusic", mDTO);
			
		}
		return SUCCESS;
	}
	
	@Override
	public void prepare() throws Exception {
		mDTO = new musicDTO();
	}
	
	@Override
	public Object getModel() {
		return mDTO;
	}

	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public String getUploadContentType() {
		return uploadContentType;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public String getFileUploadPath() {
		return fileUploadPath;
	}

	public void setFileUploadPath(String fileUploadPath) {
		this.fileUploadPath = fileUploadPath;
	}

	public String getFile_orgName() {
		return file_orgName;
	}

	public void setFile_orgName(String file_orgName) {
		this.file_orgName = file_orgName;
	}

	public String getFile_savName() {
		return file_savName;
	}

	public void setFile_savName(String file_savName) {
		this.file_savName = file_savName;
	}
	
	
}
