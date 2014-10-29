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
	private String singger;
	private String album;
	private String title;
	private String hit;
	private String realname_image;
	private String realname_music;
	
	private File uploadMusic;
	private String uploadMusicContentType;
	private String uploadMusicFileName;
	private File uploadImage;
	private String uploadImageContentType;
	private String uploadImageFileName;
	private String fileUploadPath="D:/Upload/";
		
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
		paramClass.setSingger(getSingger());
		paramClass.setRealname_music(uploadMusicFileName);
		paramClass.setRealname_image(uploadImageFileName);
		
		lastNum = (int) sqlMapper.queryForObject("musicSQL.selectLastNum");
		
		System.out.println("lastNum"+lastNum);
		
		String music_name = "music_" + (lastNum + 1);
		String music_ext = getUploadMusicFileName().substring(
				getUploadMusicFileName().lastIndexOf(".") + 1,
				getUploadMusicFileName().length());
		String image_name = "image_" + (lastNum + 1);
		String image_ext = getUploadImageFileName().substring(
				getUploadImageFileName().lastIndexOf(".") + 1,
				getUploadImageFileName().length());
		
		File destFile1 = new File(fileUploadPath + music_name + "." + music_ext );
		File destFile2 = new File(fileUploadPath + image_name + "." + image_ext );
		
		FileUtils.copyFile(getUploadMusic(), destFile1);
		FileUtils.copyFile(getUploadImage(), destFile2);
		
		paramClass.setMusic_name(music_name + "." + music_ext);
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

	public String getSingger() {
		return singger;
	}

	public void setSingger(String singger) {
		this.singger = singger;
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
	
	
}
