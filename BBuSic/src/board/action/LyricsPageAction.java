package board.action;

import java.util.ArrayList;
import java.util.List;

import BBusic.Aware.musicAware;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;

import upload.dto.albumDTO;
import upload.dto.lyricsDTO;

public class LyricsPageAction implements Action, musicAware {
	
	public static SqlMapClient sqlMapper;	//SqlMapClient API를 사용하기 위한 sqlMapper 객체.
	
	private albumDTO albumInfo;
	private static List<String> image = new ArrayList<String>();
	
	private int num;
	private String album;
	private String imagePath;
	private String lyrics;

	@Override
	public String execute() throws Exception {
		/* error none*/
		albumInfo = new albumDTO();
		
		album = (String) sqlMapper.queryForObject("musicSQL.getAlbum", num);
		//System.out.println("album : " + album);
		albumInfo = (albumDTO) sqlMapper.queryForObject("musicSQL.selectWithAlbum", album);
		//System.out.println("album : " + albumInfo);
		lyrics = (String) sqlMapper.queryForObject("musicSQL.selectWithLyrics", num);
		//System.out.println("album : " + lyricsInfo);
		image = sqlMapper.queryForList("musicSQL.selectWithAlbum_one", album);
		//System.out.println("image : " + image);
		if(image.size() != 0)
		imagePath = image.get(0);
		//System.out.println("imagePath : " + imagePath);
		return SUCCESS;
	}

	@Override
	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
		
	}

	public albumDTO getAlbumInfo() {
		return albumInfo;
	}

	public void setAlbumInfo(albumDTO albumInfo) {
		this.albumInfo = albumInfo;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getAlbum() {
		return album;
	}

	public void setAlbum(String album) {
		this.album = album;
	}

	public String getImagePath() {
		return imagePath;
	}

	public String getLyrics() {
		return lyrics;
	}

	public void setLyrics(String lyrics) {
		this.lyrics = lyrics;
	}
	
}
