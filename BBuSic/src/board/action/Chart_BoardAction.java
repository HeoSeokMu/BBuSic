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
	
	public static Reader reader;			//���� ��Ʈ���� ���� reader.
	public static SqlMapClient sqlMapper;	//SqlMapClient API�� ����ϱ� ���� sqlMapper ��ü.

	private List<musicDTO> list = new ArrayList<musicDTO>();;
	
	private int currentPage = 1;	//���� ������
	private int totalCount;			// �� �Խù��� ��
	private int blockCount = 10;	// �� ��������  �Խù��� ��
	private int blockPage = 10; 	// �� ȭ�鿡 ������ ������ ��
	private pagingAction page; 		// ����¡ Ŭ����
	private String pagingHtml; 		// ����¡�� ������ HTML
	private String category;		// �ش� ��Ʈ
	private String genre;			// �帣
	
	//������
	public Chart_BoardAction() throws IOException {
		
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml ������ ���������� �����´�.
		if(reader != null) {System.out.println("Chart_BoardAction reader pass");}
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);	// sqlMapConfig.xml�� ������ ������ sqlMapper ��ü ����.
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
					totalCount = list.size(); // ��ü �� ������ ���Ѵ�.
				} else if (category.equals("new")) {
					list = sqlMapper.queryForList("musicSQL.newSelectAll");
					totalCount = list.size(); // ��ü �� ������ ���Ѵ�.
				}
				
				if(category.equals("chart")){
					
					list = sqlMapper.queryForList("musicSQL.selectAll");
					
					System.out.println("list Size : "+list.size());
					
					blockCount = 50;
					blockPage = 2;
					totalCount = list.size();
					
					setCurrentPage(currentPage);
					page = new pagingAction(currentPage, totalCount, blockCount, blockPage, category); // pagingAction ��ü ����.
					
				}else{
					setCurrentPage(currentPage);
					page = new pagingAction(currentPage, totalCount, blockCount, blockPage, category); // pagingAction ��ü ����.
				}
				System.out.println("blockCount : " + blockCount);
				System.out.println("list : " + list);
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
