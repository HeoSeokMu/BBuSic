package board.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import upload.dto.musicDTO;
import upload.dto.musicDTO2;
import BBusic.Aware.musicAware;
import board.action.pagingAction;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class Chart_BoardAction implements Action, Preparable, ModelDriven, musicAware{
	
	public static SqlMapClient sqlMapper;	//SqlMapClient API를 사용하기 위한 sqlMapper 객체.

	private static List<musicDTO> list = new ArrayList<musicDTO>();
	private static List<musicDTO> musicList2 = new ArrayList<musicDTO>();
	
	private int currentPage = 1;	//현재 페이지
	private int totalCount;			// 총 게시물의 수
	private int blockCount = 10;	// 한 페이지의  게시물의 수
	private int blockPage = 5; 		// 한 화면에 보여줄 페이지 수
	private pagingAction page; 		// 페이징 클래스
	private String pagingHtml; 		// 페이징을 구현한 HTML
	private String category;		// 해당 차트
	private String type;			// 장르
	
	private musicDTO mdto;
	private musicDTO2 mdto2;
	private Map session;
	private String id;
	private String benefit;
		
	@Override
	public String execute() throws Exception {
		System.out.println("execute"+sqlMapper);
		if(category == "genre"){
			System.out.println("ifcategory : " + category);
			System.out.println("iftype : " + type);
		}else{
			System.out.println("elsecategory : " + category);
			System.out.println("elsetype : " + type);
		}
				if(category.equals("genre")) {
					if(type != null){
						list = sqlMapper.queryForList("musicSQL.genreSelectAll", type);
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
					
					blockCount = 50;
					blockPage = 2;
					totalCount = list.size();
					
					setCurrentPage(currentPage);
					page = new pagingAction(currentPage, totalCount, blockCount, blockPage, category); // pagingAction 객체 생성.
					
				}else{
					setCurrentPage(currentPage);
					page = new pagingAction(currentPage, totalCount, blockCount, blockPage, category); // pagingAction 객체 생성.
				}
				
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
	
	/* 팝업 메서드 */
	public String popupEx() throws Exception {
		int[] cNo = mdto.getChkNo();   			//musicDTO 에 선언한 chkNo를 cNo에 담는다.
<<<<<<< HEAD
=======

>>>>>>> 0dd606efad5d4721a3390680216d4987a05887af
		session =ActionContext.getContext().getSession();
		id = (String) session.get("memId");
		
		String limit = "무제한 듣기";
		mdto2 = new musicDTO2();
		mdto2.setLimit(limit);
		mdto2.setId(id);
		benefit = (String)sqlMapper.queryForObject("musicSQL.benefit", mdto2);
		if(benefit !=null){			
			benefit = benefit.substring(0, 6);			
		}else{
			
		}
		
		for (int i = 0; i < cNo.length; i++) {		
			musicList2.add(i, list.get(cNo[i]));				
		}
<<<<<<< HEAD
=======
		
		for (int i = 0; i < cNo.length; i++) {				
			System.out.println(cNo[i]);
			musicList2.add(i, list.get(cNo[i]));
		}
>>>>>>> 0dd606efad5d4721a3390680216d4987a05887af
		return SUCCESS;
	}
	
	/* 팝업 리스트 삭제 */
	public String deleteListAction() throws Exception{		
		musicList2.clear();
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

	public String getPagingHtml() {
		return pagingHtml;
	}
	
	public void setPagingHtml(String pagingHtml) {
		this.pagingHtml = pagingHtml;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
	
	public static List<musicDTO> getMusicList2() {
		return musicList2;
	}

	public static void setMusicList2(List<musicDTO> musicList2) {
		Chart_BoardAction.musicList2 = musicList2;
	}

	@Override
	public Object getModel() {
		return mdto;
	}

	@Override
	public void prepare() throws Exception {
		mdto = new musicDTO();
	}

	
	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper; 
		
	}
	
	
}
