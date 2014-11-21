package BBu_main;

import java.util.ArrayList;
import java.util.List;

import BBusic.Aware.musicAware;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import payment.action.BBuSicAware;
import payment.pay_setDTO.payMyInfo_DTO;
import upload.dto.musicDTO;

public class BBuMain implements Action, BBuSicAware, ServletRequestAware, ServletResponseAware, ModelDriven, Preparable,musicAware {
	payMyInfo_DTO myinfo_DTO;
	public static SqlMapClient sqlMapper;
	private String id;
	private String cooId = null;
	private HttpServletResponse res;
	private HttpServletRequest req;
	
	private List<musicDTO> musicPictureList = new ArrayList<musicDTO>();
	private musicDTO mdto;
	String file1;
	String file2;
	String file3;
	String file4;
	String file5;
	String file6;
	String file7;

	public String execute() throws Exception {
		Cookie[] cookies = req.getCookies();
		if(cookies != null){
			for(int i=0;i<cookies.length; i++){
				if(cookies[i].getName().equals("memId")){
					System.out.println("cookie=" + cookies[i].getValue());
					cooId = cookies[i].getValue();
				}
			}
		}
		
		if (id != null) {
			myinfo_DTO = new payMyInfo_DTO();
			myinfo_DTO = (payMyInfo_DTO)sqlMapper.queryForObject("payment_my.selectMyInfo", id);			
		}
		
		
		musicPictureList = sqlMapper.queryForList("musicSQL.mainPicture");
		file1 = musicPictureList.get(0).getMusic_image();
		file2 = musicPictureList.get(1).getMusic_image();
		file3 = musicPictureList.get(2).getMusic_image();
		file4 = musicPictureList.get(3).getMusic_image();
		file5 = musicPictureList.get(4).getMusic_image();
		file6 = musicPictureList.get(5).getMusic_image();
		file7 = musicPictureList.get(6).getMusic_image();
				
		return SUCCESS;
	}

	@Override
	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	public String getCooId() {
		return cooId;
	}

	public payMyInfo_DTO getMyinfo_DTO() {
		return myinfo_DTO;
	}

	@Override
	public Object getModel() {		
		return mdto;
	}

	@Override
	public void prepare() throws Exception {
		mdto= new musicDTO();
	}

	public List<musicDTO> getMusicPictureList() {
		return musicPictureList;
	}

	public void setMusicPictureList(List<musicDTO> musicPictureList) {
		this.musicPictureList = musicPictureList;
	}

	public String getFile1() {
		return file1;
	}

	public void setFile1(String file1) {
		this.file1 = file1;
	}

	public String getFile2() {
		return file2;
	}

	public void setFile2(String file2) {
		this.file2 = file2;
	}

	public String getFile3() {
		return file3;
	}

	public void setFile3(String file3) {
		this.file3 = file3;
	}

	public String getFile4() {
		return file4;
	}

	public void setFile4(String file4) {
		this.file4 = file4;
	}

	public String getFile5() {
		return file5;
	}

	public void setFile5(String file5) {
		this.file5 = file5;
	}

	public String getFile6() {
		return file6;
	}

	public void setFile6(String file6) {
		this.file6 = file6;
	}

	public String getFile7() {
		return file7;
	}

	public void setFile7(String file7) {
		this.file7 = file7;
	}

	
	public void setServletResponse(HttpServletResponse res) {
		this.res = res;
	}

	public void setServletRequest(HttpServletRequest req) {
		this.req = req;
	}
}
