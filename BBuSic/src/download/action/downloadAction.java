package download.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import upload.dto.musicDTO;
import BBusic.Aware.musicAware;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class downloadAction implements Action,Preparable,ModelDriven,musicAware{

	public static SqlMapClient sqlMapper;	//SqlMapClient API�� ����ϱ� ���� sqlMapper ��ü.

	private static List<musicDTO> list = new ArrayList<musicDTO>();
	private static List<musicDTO> musicList2 = new ArrayList<musicDTO>();
	private static List<File> listFile = new ArrayList<File>();
	private musicDTO mdto;
	private int blockCount = 10;	
	
	String dir;	  //struts.xml���� �Ѿ���� ������ ����	
	String fileName;
	InputStream inputStream; //�� �������� struts.xml��  <param name="inputName">���� ���ǵ�
	
	int sum = 0;
	/*�ٿ�ε� ���� ��� ���� execute()*/
	@Override
	public String execute() throws Exception {				
		list = sqlMapper.queryForList("musicSQL.selectAll"); //����� ��� �뷡�� list �� ��´�.	
		
		int[] cNo = mdto.getChkNo();   			//musicDTO �� ������ chkNo�� cNo�� ��´�.
		
		for (int i = 0; i < cNo.length; i++) {	
			musicList2.add(i, list.get(cNo[i]));//list i��° �� ��� ������ musicList2 i ��°�� �ִ´�. 
			sum += musicList2.get(i).getPrice();			
		}
	return SUCCESS;	
	}
	
	/*�ٿ�ε� �޼���*/
	public String downLoad() throws Exception{				
		int[] cNo2 = mdto.getChkNo2();
		
		File file2 = new File(dir);
		
		if(cNo2 != null){
			for (int i = 0; i < cNo2.length; i++) {
				musicList2.add(i, list.get(cNo2[i]));				
			}
			for(int i = 0; i< musicList2.size(); i++){
				File[] files = file2.listFiles();
				inputStream = new FileInputStream(dir + "/" + fileName);
			}
		}else{
			inputStream = new FileInputStream(dir + "/" + fileName);
		}
		return SUCCESS;
	}
	
	
	
	public static List<File> getListFile() {
		return listFile;
	}

	public static void setListFile(List<File> listFile) {
		downloadAction.listFile = listFile;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

	public InputStream getInputStream() {
		return inputStream;
	}

	public void setDir(String dir) {
		this.dir = dir;
	}

	public static List<musicDTO> getList() {
		return list;
	}
	public static void setList(List<musicDTO> list) {
		downloadAction.list = list;
	}
	public static List<musicDTO> getMusicList2() {
		return musicList2;
	}
	public static void setMusicList2(List<musicDTO> musicList2) {
		downloadAction.musicList2 = musicList2;
	}
	public musicDTO getMdto() {
		return mdto;
	}
	public void setMdto(musicDTO mdto) {
		this.mdto = mdto;
	}
	@Override
	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;		
	}
	public Object getModel() {
		return mdto;
	}
	public void prepare() throws Exception {
		mdto = new musicDTO();
	}
}
