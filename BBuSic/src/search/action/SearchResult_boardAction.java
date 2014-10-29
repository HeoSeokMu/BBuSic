package search.action;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import upload.dto.musicDTO;
import upload.dto.searchDTO;
import board.action.pagingAction;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.Action;
import com.sun.corba.se.spi.legacy.connection.GetEndPointInfoAgainException;

public class SearchResult_boardAction implements Action{
	
	public static Reader reader;			//파일 스트림을 위한 reader.
	public static SqlMapClient sqlMapper;	//SqlMapClient API를 사용하기 위한 sqlMapper 객체.
	
	private String searchWord;
	searchDTO sDTO;
		
	private List<musicDTO> list = new ArrayList<musicDTO>();
	
	private int currentPage = 1;	//현재 페이지
	private int totalCount;			// 총 게시물의 수
	private int blockCount = 10;	// 한 페이지의  게시물의 수
	private int blockPage = 5; 		// 한 화면에 보여줄 페이지 수
	private pagingAction page; 		// 페이징 클래스
	
	//생성자
	public SearchResult_boardAction() throws IOException{
		
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml 파일의 설정내용을 가져온다.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);	// sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성.
		if(sqlMapper != null) { System.out.println("SearchResult sqlMapper pass"); }
		reader.close();
	}
	
	@Override
	public String execute() throws Exception {
		sDTO = new searchDTO();
		
		sDTO.setAlbum(searchWord);
		sDTO.setSingger(searchWord);
		sDTO.setTitle(searchWord);
		sDTO.setGenre(searchWord);
		
		System.out.println("searchWord : " + searchWord);
		System.out.println("getAlbum : " + sDTO.getAlbum());
		System.out.println("getSingger : " + sDTO.getSingger());
		System.out.println("getTitle : " + sDTO.getTitle());
		System.out.println("getGenre : " + sDTO.getGenre());
		
		list = sqlMapper.queryForList("musicSQL.search_Test", sDTO); //검색어로 검색된 값을 list로
		totalCount = list.size(); //검색된 전체 글의 개수
		setCurrentPage(currentPage);
		page = new pagingAction(currentPage, totalCount, blockCount, blockPage); // 페이징
		
		int lastCount = totalCount;
				
		if(page.getEndCount() < totalCount){
			lastCount = page.getEndCount() + 1;
		}
		
		list = list.subList(page.getStartCount(), lastCount);
		
		return SUCCESS;
	}

	public String getSearchWord() {
		return searchWord;
	}

	public void setSearchWord(String searchWord) {
		this.searchWord = searchWord;
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
	
}
