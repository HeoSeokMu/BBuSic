package upload.dto;

public class musicDTO {
	
	private int num;
	private String music_name;
	private String music_image;
	private String realname_image;
	private String realname_music;
	private String genre;
	private String singer;
	private String album;
	private String title;
	private int hit;
	private String minute;
	private int[] chkNo;
	private int[] chkNo2;
	
	
	public int[] getChkNo2() {
		return chkNo2;
	}
	public void setChkNo2(int[] chkNo2) {
		this.chkNo2 = chkNo2;
	}
	public int[] getChkNo() {
		return chkNo;
	}
	public void setChkNo(int[] chkNo) {
		this.chkNo = chkNo;
	}
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
		this.singer = singer;
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
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getRealname_image() {
		return realname_image;
	}
	public void setRealname_image(String realname_image) {
		this.realname_image = realname_image;
	}
	public String getMusic_image() {
		return music_image;
	}
	public void setMusic_image(String music_image) {
		this.music_image = music_image;
	}
	public String getRealname_music() {
		return realname_music;
	}
	public void setRealname_music(String realname_music) {
		this.realname_music = realname_music;
	}
	public String getMinute() {
		return minute;
	}
	public void setMinute(String minute) {
		this.minute = minute;
	}
	
	
}
