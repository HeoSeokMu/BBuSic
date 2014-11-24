package board.action;

import java.util.ArrayList;
import java.util.List;

import upload.dto.albumDTO;
import upload.dto.musicDTO;
import BBusic.Aware.musicAware;
import board.action.pagingAction;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class AlbumPageAction implements Action,musicAware{
	
	public static SqlMapClient sqlMapper;	//SqlMapClient API를 사용하기 위한 sqlMapper 객체.
	
	private albumDTO albumInfo;
	private static List<musicDTO> list = new ArrayList<musicDTO>();
	private static List<String> image = new ArrayList<String>();
	
	private String imagePath;
	private int currentPage = 1;
	private int totalCount;
	private int blockCount = 10;
	private int blockPage = 5;
	private pagingAction page;
	private String pagingHtml;
	private String category;
	private String album;
	
	public String execute() throws Exception {
		
		albumInfo = new albumDTO();
		
		list = sqlMapper.queryForList("musicSQL.getAlbumList", album);
		//if(list == null){System.out.println("list null!!!!!!!");}
		System.out.println(album);
		albumInfo = (albumDTO) sqlMapper.queryForObject("musicSQL.selectWithAlbum", album);
		//albumInfo not null
		//if(albumInfo.getName() == null){System.out.println("albumInfo null!!!!!!!");}else{System.out.println("albumInfo not null !!!!!!");}
		image = sqlMapper.queryForList("musicSQL.selectWithAlbum_one", album);
		//if(image == null){System.out.println("image null!!!!!!!");}else{System.out.println("image : " + image);}
		if(image.size() != 0)
		imagePath = image.get(0);
		
		totalCount = list.size();
		
		setCurrentPage(currentPage);
		
		page = new pagingAction(currentPage, totalCount, blockCount, blockPage, category);
		setPagingHtml(page.getPagingHtml().toString()); 
		
		int lastCount = totalCount;
		
		if (page.getEndCount() < totalCount){
			lastCount = page.getEndCount() + 1;
		}
		
		list = list.subList(page.getStartCount(), lastCount);
		
		//for(int i=0; i < list.size(); i++){ System.out.println("list" + list.get(i)); }
		return SUCCESS;
	}

	public List<musicDTO> getList() {
		return list;
	}

	public void setList(List<musicDTO> list) {
		this.list = list;
	}
	
	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getBlockCount() {
		return blockCount;
	}

	public void setBlockCount(int blockCount) {
		this.blockCount = blockCount;
	}

	public int getBlockPage() {
		return blockPage;
	}

	public void setBlockPage(int blockPage) {
		this.blockPage = blockPage;
	}

	public pagingAction getPage() {
		return page;
	}

	public void setPage(pagingAction page) {
		this.page = page;
	}

	public String getPagingHtml() {
		return pagingHtml;
	}

	public void setPagingHtml(String pagingHtml) {
		this.pagingHtml = pagingHtml;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
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

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public albumDTO getAlbumInfo() {
		return albumInfo;
	}
}
