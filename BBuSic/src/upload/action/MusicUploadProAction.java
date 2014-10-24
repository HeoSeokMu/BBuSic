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
	public static Reader reader; //���� ��Ʈ���� ���� reader.
	public static SqlMapClient sqlMapper; //SqlMapClient API�� ����ϱ� ���� sqlMapper ��ü.
	
	musicDTO mDTO;
	
	private File upload; //���� ��ü
	private String uploadContentType; //������ Ÿ��
	private String uploadFileName; //���� �̸�
	private String fileUploadPath = "C:Users\\user1\\Desktop\\music\\WebContent\\images\\"; //���ε� ���.
	
	private musicDTO resultClass; //���� ��� ���� ������ ��ü
	
	private String file_orgName; //���ε� ������ ���� �̸�
	private String file_savName; //������ ������ ���ε� ������ �̸�. ���� ��ȣ�� �����Ѵ�.
	
	
	public MusicUploadProAction() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml ������ ���������� �����´�.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); // sqlMapConfig.xml�� ������ ������ sqlMapper ��ü ����.
		reader.close();
	}
	
	@Override
	public String execute() throws Exception {
		
		//�Ķ���Ϳ� ����Ʈ ��ü ����.
		resultClass = new musicDTO();
		
		
		if (getUpload() != null) {

			//����� �� ��ȣ ��������.
			resultClass = (musicDTO) sqlMapper.queryForObject("selectLastNum");

			//���� ������ ����� ���� �̸��� Ȯ���� ����.
			int fileNumber = resultClass.getNum();
			
			String file_name = "file_" +(fileNumber+1);
			String file_ext = getUploadFileName().substring(
					getUploadFileName().lastIndexOf('.') + 1,
					getUploadFileName().length());

			//������ ���� ����.
			File destFile = new File(fileUploadPath + file_name + "."
					+ file_ext);
			FileUtils.copyFile(getUpload(), destFile);

			//���� ���� �Ķ���� ����.
			mDTO.setNum(resultClass.getNum());
			mDTO.setMusic_name(file_name + "." + file_ext);		//������ ������ ���� �̸�
			
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
