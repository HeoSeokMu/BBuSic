package board.action;

import java.util.ArrayList;
import java.util.List;

import upload.dto.likeDTO;
import upload.dto.musicDTO;
import upload.dto.singerDTO;
import BBusic.Aware.musicAware;
import board.action.pagingAction;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;

public class SingerPageAction implements Action, musicAware{
	
public static SqlMapClient sqlMapper;	//SqlMapClient API를 사용하기 위한 sqlMapper 객체.
	
	private singerDTO singerInfo;
	private static List<musicDTO> list = new ArrayList<musicDTO>();
	private static List<String> image = new ArrayList<String>();
	private static List<likeDTO> like = new ArrayList<likeDTO>();
	
	private String imagePath;
	private int currentPage = 1;
	private int totalCount;
	private int blockCount = 10;
	private int blockPage = 5;
	private pagingAction page;
	private String pagingHtml;
	private String category;
	private String singer;
	
	public String execute() throws Exception {
		
		singerInfo = new singerDTO();
		//System.out.println("singer : " + singer);
		//System.out.println("category : " + category);
		list = sqlMapper.queryForList("musicSQL.getSingerList", singer);
		//if(list.get(0) == null){System.out.println("list null!!!!!!!");}
		singerInfo = (singerDTO) sqlMapper.queryForObject("musicSQL.selectWithSinger", singer);
		//if(singerInfo.getSinger() == null){System.out.println("singerInfo null!!!!!!!");}else{System.out.println("singerInfo not null !!!!!!");}
		image = sqlMapper.queryForList("musicSQL.selectWithSinger_one", singer);
		//if(image == null){System.out.println("singer null!!!!!!!");}else{System.out.println("image : " + image);}
		if(image.size() != 0){
			imagePath = image.get(0);
			//System.out.println("image yeah!!!!!!!!!!!" + imagePath);
		}else{
			//System.out.println("image null!!!!!!");
		}
		
		totalCount = list.size();
		
		setCurrentPage(currentPage);
		
		page 	= new pagingAction(currentPage, totalCount, blockCount, blockPage, category);
		setPagingHtml(page.getPagingHtml().toString());
		
		int lastCount = totalCount;
		
		if (page.getEndCount() < totalCount){
			lastCount = page.getEndCount() + 1;
		}
		
		list = list.subList(page.getStartCount(), lastCount);
		
/*		like = list*/
		
		//for(int i=0; i < list.size(); i++){ System.out.println("list" + list.get(i)); }
		return SUCCESS;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	
	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
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
	
	public List<musicDTO> getList() {
		return list;
	}

	public void setList(List<musicDTO> list) {
		this.list = list;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
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

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public singerDTO getSingerInfo() {
		return singerInfo;
	}

	public void setSingerInfo(singerDTO singerInfo) {
		this.singerInfo = singerInfo;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public String getSinger() {
		return singer;
	}

	public void setSinger(String singer) {
		this.singer = singer;
	}

	public static List<likeDTO> getLike() {
		return like;
	}

	public static void setLike(List<likeDTO> like) {
		SingerPageAction.like = like;
	}
	
}
