package upload.action;

import java.io.File;
import java.io.IOException;
import java.io.Reader;

import org.apache.commons.io.FileUtils;

import upload.dto.musicDTO;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class MusicUploadProAction extends ActionSupport{
	
	public static Reader reader; //파일 스트림을 위한 reader.
	public static SqlMapClient sqlMapper; //SqlMapClient API를 사용하기 위한 sqlMapper 객체.
	
	private musicDTO paramClass;
	
	private int num;
	private String music_name;
	private String music_image;
	private String genre;
	private String singer;
	private String album;
	private String title;
	private String hit;
	private String realname_image;
	private String realname_music;
	private String minute;
	private int price;
	
	private File uploadMusic;
	private String uploadMusicContentType;
	private String uploadMusicFileName;
	private File uploadMusic_minute;
	private String uploadMusic_minuteContentType;
	private String uploadMusic_minuteFileName;
	private File uploadImage;
	private String uploadImageContentType;
	private String uploadImageFileName;
	private String fileUploadPath="D:/hyosung/eclipse/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/BBuSic/upload/";
		
	// 생성자
	public MusicUploadProAction() throws IOException {

		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml 파일의 설정내용을 가져온다.
		if(reader != null) {System.out.println("reader pass");}
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); // sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성.
		if(sqlMapper != null) {System.out.println("sqlMapper pass");}
		reader.close();
	}
	
	@Override
	public String execute() throws Exception {
		paramClass = new musicDTO();
		int lastNum = 0;
		
		if(sqlMapper != null) {System.out.println("execute sqlMapper pass");}
		
		paramClass.setGenre(getGenre());
		paramClass.setAlbum(getAlbum());
		paramClass.setTitle(getTitle());
		paramClass.setSinger(getSinger());
		paramClass.setRealname_music(uploadMusicFileName);
		paramClass.setRealname_image(uploadImageFileName);
		paramClass.setPrice(getPrice());
		
		if(sqlMapper.queryForObject("musicSQL.selectLastNum")==null){
			lastNum = 0;
		}else{
			lastNum = (int) sqlMapper.queryForObject("musicSQL.selectLastNum");
		}
		System.out.println("lastNum"+lastNum);
		
		String music_name = "music_" + (lastNum + 1);
		String music_ext = getUploadMusicFileName().substring(
				getUploadMusicFileName().lastIndexOf(".") + 1,
				getUploadMusicFileName().length());
		String minute_name = "minute_" + (lastNum + 1);
		String minute_ext = getUploadMusic_minuteFileName().substring(
				getUploadMusic_minuteFileName().lastIndexOf(".") + 1,
				getUploadMusic_minuteFileName().length());
		String image_name = "image_" + (lastNum + 1);
		String image_ext = getUploadImageFileName().substring(
				getUploadImageFileName().lastIndexOf(".") + 1,
				getUploadImageFileName().length());
		
		File destFile1 = new File(fileUploadPath + music_name + "." + music_ext );
		File destFile2 = new File(fileUploadPath + minute_name + "." + minute_ext );
		File destFile3 = new File(fileUploadPath + image_name + "." + image_ext ); 
		
		FileUtils.copyFile(getUploadMusic(), destFile1);
		FileUtils.copyFile(getUploadMusic_minute(), destFile2);
		FileUtils.copyFile(getUploadImage(), destFile3);
		
		paramClass.setMusic_name(music_name + "." + music_ext);
		paramClass.setMinute(minute_name + "." + minute_ext);
		paramClass.setMusic_image(image_name + "." + image_ext);
		paramClass.setNum(lastNum);
		
		//파일 저장시 파일 번호는 1부터 시작
		
		sqlMapper.insert("musicSQL.insertMusic", paramClass);
		
		return SUCCESS;
	}
	
	public musicDTO getParamClass() {
		return paramClass;
	}

	public void setParamClass(musicDTO paramClass) {
		this.paramClass = paramClass;
	}

	/*
	public musicDTO getResultClass() {
		return resultClass;
	}

	public void setResultClass(musicDTO resultClass) {
		this.resultClass = resultClass;
	}
	*/

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getMusic_name() {
		return music_name;
	}

	public void setMusic_name(String music_name) {
		this.music_name = music_name;
	}

	public String getMusic_image() {
		return music_image;
	}

	public void setMusic_image(String music_image) {
		this.music_image = music_image;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getSinger() {
		return singer;
	}

	public void setSinger(String singer) {
		this.singer =singer;
	}

	public String getAlbum() {
		return album;
	}

	public void setAlbum(String album) {
		this.album = album;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getHit() {
		return hit;
	}

	public void setHit(String hit) {
		this.hit = hit;
	}

	public String getRealname_image() {
		return realname_image;
	}

	public void setRealname_image(String realname_image) {
		this.realname_image = realname_image;
	}

	public String getRealname_music() {
		return realname_music;
	}

	public void setRealname_music(String realname_music) {
		this.realname_music = realname_music;
	}

	public File getUploadMusic() {
		return uploadMusic;
	}

	public void setUploadMusic(File uploadMusic) {
		this.uploadMusic = uploadMusic;
	}

	public String getUploadMusicContentType() {
		return uploadMusicContentType;
	}

	public void setUploadMusicContentType(String uploadMusicContentType) {
		this.uploadMusicContentType = uploadMusicContentType;
	}

	public String getUploadMusicFileName() {
		return uploadMusicFileName;
	}

	public void setUploadMusicFileName(String uploadMusicFileName) {
		this.uploadMusicFileName = uploadMusicFileName;
	}

	public File getUploadImage() {
		return uploadImage;
	}

	public void setUploadImage(File uploadImage) {
		this.uploadImage = uploadImage;
	}

	public String getUploadImageContentType() {
		return uploadImageContentType;
	}

	public void setUploadImageContentType(String uploadImageContentType) {
		this.uploadImageContentType = uploadImageContentType;
	}

	public String getUploadImageFileName() {
		return uploadImageFileName;
	}

	public void setUploadImageFileName(String uploadImageFileName) {
		this.uploadImageFileName = uploadImageFileName;
	}

	public String getFileUploadPath() {
		return fileUploadPath;
	}

	public void setFileUploadPath(String fileUploadPath) {
		this.fileUploadPath = fileUploadPath;
	}

	public String getMinute() {
		return minute;
	}

	public void setMinute(String minute) {
		this.minute = minute;
	}

	public File getUploadMusic_minute() {
		return uploadMusic_minute;
	}

	public void setUploadMusic_minute(File uploadMusic_minute) {
		this.uploadMusic_minute = uploadMusic_minute;
	}

	public String getUploadMusic_minuteContentType() {
		return uploadMusic_minuteContentType;
	}

	public void setUploadMusic_minuteContentType(
			String uploadMusic_minuteContentType) {
		this.uploadMusic_minuteContentType = uploadMusic_minuteContentType;
	}

	public String getUploadMusic_minuteFileName() {
		return uploadMusic_minuteFileName;
	}

	public void setUploadMusic_minuteFileName(String uploadMusic_minuteFileName) {
		this.uploadMusic_minuteFileName = uploadMusic_minuteFileName;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	
	
}
