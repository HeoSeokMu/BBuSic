package board.action;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import upload.dto.musicDTO;
import board.action.pagingAction;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.Action;

public class Chart_BoardAction implements Action{
	
	public static Reader reader;			//파일 스트림을 위한 reader.
	public static SqlMapClient sqlMapper;	//SqlMapClient API를 사용하기 위한 sqlMapper 객체.

	private List<musicDTO> list = new ArrayList<musicDTO>();;
	
	private int currentPage = 1;	//현재 페이지
	private int totalCount;			// 총 게시물의 수
	private int blockCount = 10;	// 한 페이지의  게시물의 수
	private int blockPage = 10; 	// 한 화면에 보여줄 페이지 수
	private pagingAction page; 		// 페이징 클래스
	private String pagingHtml; 		// 페이징을 구현한 HTML
	private String category;		// 해당 차트
	private String genre;			// 장르
	
	//생성자
	public Chart_BoardAction() throws IOException {
		
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml 파일의 설정내용을 가져온다.
		if(reader != null) {System.out.println("Chart_BoardAction reader pass");}
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);	// sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성.
		if(sqlMapper != null) {System.out.println("Chart_BoardAction sqlMapper pass");}
		reader.close();
		
	}
	
	@Override
	public String execute() throws Exception {
		if(category == "chart"){
			System.out.println("ifcategory : " + category);
			System.out.println("ifgenre : " + genre);
		}else{
			System.out.println("elsecategory : " + category);
			System.out.println("elsegenre : " + genre);
		}
				if(category.equals("genre")) {
					if(genre != null){
						list = sqlMapper.queryForList("musicSQL.genreSelectAll", genre);
					}else{
						list = sqlMapper.queryForList("musicSQL.newSelectAll");
					}
					totalCount = list.size(); // 전체 글 갯수를 구한다.
				} else if (category.equals("new")) {
					list = sqlMapper.queryForList("musicSQL.newSelectAll");
					totalCount = list.size(); // 전체 글 갯수를 구한다.
				}
				
				if(category.equals("chart")){
					
					list = sqlMapper.queryForList("musicSQL.selectAll");
					
					System.out.println("list Size : "+list.size());
					
					blockCount = 50;
					blockPage = 2;
					totalCount = list.size();
					
					setCurrentPage(currentPage);
					page = new pagingAction(currentPage, totalCount, blockCount, blockPage, category); // pagingAction 객체 생성.
					
				}else{
					setCurrentPage(currentPage);
					page = new pagingAction(currentPage, totalCount, blockCount, blockPage, category); // pagingAction 객체 생성.
				}
				System.out.println("blockCount : " + blockCount);
				System.out.println("list : " + list);
				setPagingHtml(page.getPagingHtml().toString());  // 페이지 HTML 생성.
				//paging
					
				int lastCount = totalCount;
					
				// 현재 페이지의 마지막 글의 번호가 전체의 마지막 글 번호보다 작으면 lastCount를 +1 번호로 설정.
				if (page.getEndCount() < totalCount)
					lastCount = page.getEndCount() + 1;

				// 전체 리스트에서 현재 페이지만큼의 리스트만 가져온다.
				list = list.subList(page.getStartCount(), lastCount);
				
		return SUCCESS;
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

	public static SqlMapClient getSqlMapper() {
	      return sqlMapper;
	}
	
   public void setSqlMapper(SqlMapClient sqlMapper) {
	   Chart_BoardAction.sqlMapper = sqlMapper;
   }

	public String getPagingHtml() {
		return pagingHtml;
	}
	
	public void setPagingHtml(String pagingHtml) {
		this.pagingHtml = pagingHtml;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
	
}
