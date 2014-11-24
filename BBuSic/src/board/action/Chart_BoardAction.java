package board.action;

import java.util.ArrayList;
import java.util.List;

import upload.dto.musicDTO;
import BBusic.Aware.musicAware;
import board.action.pagingAction;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class Chart_BoardAction implements Action, Preparable, ModelDriven, musicAware{
	
	public static SqlMapClient sqlMapper;	//SqlMapClient API�� ����ϱ� ���� sqlMapper ��ü.

	private static List<musicDTO> list = new ArrayList<musicDTO>();
	private static List<musicDTO> musicList2 = new ArrayList<musicDTO>();
	
	private int currentPage = 1;	//���� ������
	private int totalCount;			// �� �Խù��� ��
	private int blockCount = 10;	// �� ��������  �Խù��� ��
	private int blockPage = 5; 		// �� ȭ�鿡 ������ ������ ��
	private pagingAction page; 		// ����¡ Ŭ����
	private String pagingHtml; 		// ����¡�� ������ HTML
	private String category;		// �ش� ��Ʈ
	private String type;			// �帣
	
	private musicDTO mdto;
	
		
	@Override
	public String execute() throws Exception{
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
					totalCount = list.size(); // ��ü �� ������ ���Ѵ�.
				} else if (category.equals("new")) {
					list = sqlMapper.queryForList("musicSQL.newSelectAll");
					totalCount = list.size(); // ��ü �� ������ ���Ѵ�.
				}
				
				if(category.equals("chart")){
					
					list = sqlMapper.queryForList("musicSQL.selectAll");
					
					blockCount = 10;
					blockPage = 2;
					totalCount = list.size();
					
					setCurrentPage(currentPage);
					page = new pagingAction(currentPage, totalCount, blockCount, blockPage, category); // pagingAction ��ü ����.
					
				}else{
					setCurrentPage(currentPage);
					page = new pagingAction(currentPage, totalCount, blockCount, blockPage, category); // pagingAction ��ü ����.
				}
				System.out.println("list f : " + list);
				setPagingHtml(page.getPagingHtml().toString());  // ������ HTML ����.
				//paging
					
				int lastCount = totalCount;
					
				// ���� �������� ������ ���� ��ȣ�� ��ü�� ������ �� ��ȣ���� ������ lastCount�� +1 ��ȣ�� ����.
				if (page.getEndCount() < totalCount)
					lastCount = page.getEndCount() + 1;

				// ��ü ����Ʈ���� ���� ��������ŭ�� ����Ʈ�� �����´�.
				list = list.subList(page.getStartCount(), lastCount);
				
		return SUCCESS;
	}
	
	/* �˾� �޼��� */
	public String popupEx() throws Exception {
		int[] cNo = mdto.getChkNo();   			//musicDTO �� ������ chkNo�� cNo�� ��´�.
			for (int i = 0; i < cNo.length; i++) {				
				System.out.println(cNo[i]);
				musicList2.add(i, list.get(cNo[i]));
			}
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
