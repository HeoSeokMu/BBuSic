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

public class MelonChart_boardAction implements Action{
	
	public static Reader reader;			//파일 스트림을 위한 reader.
	public static SqlMapClient sqlMapper;	//SqlMapClient API를 사용하기 위한 sqlMapper 객체.
	
	private List<musicDTO> list = new ArrayList<musicDTO>();;
	
	private int currentPage = 1;	//현재 페이지
	private int totalCount;			// 총 게시물의 수
	private int blockCount = 50;	// 한 페이지의  게시물의 수
	private int blockPage = 5; 		// 한 화면에 보여줄 페이지 수
	private pagingAction page; 		// 페이징 클래스
	
	//생성자
	public MelonChart_boardAction() throws IOException {
		
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml 파일의 설정내용을 가져온다.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);	// sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성.
		reader.close();
		
	}
	
	@Override
	public String execute() throws Exception {
		// 모든 글을 가져와 list에 넣는다.
				list = sqlMapper.queryForList("selectAll");
				System.out.println("list Size : "+list.size());
				totalCount = list.size(); // 전체 글 갯수를 구한다.
				page = new pagingAction(currentPage, totalCount, blockCount, blockPage); // pagingAction 객체 생성.
				
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
	   MelonChart_boardAction.sqlMapper = sqlMapper;
   }
}
