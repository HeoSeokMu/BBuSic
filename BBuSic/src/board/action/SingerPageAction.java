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

public class SingerPageAction implements Action{
	
	public static Reader reader;			//���� ��Ʈ���� ���� reader.
	public static SqlMapClient sqlMapper;	//SqlMapClient API�� ����ϱ� ���� sqlMapper ��ü.
	
	private List<musicDTO> list = new ArrayList<musicDTO>();;
	
	private int currentPage = 1; 	//���� ������
	private int totalCount;			//�� �Խù��� ��
	private int blockCount = 10;	//�� �������� ������ �Խù� ��
	private int blockPage = 10;		//�� �������� ������ ������ ��
	private pagingAction page;		//����¡ Ŭ����
	private String pagingHtml;		//����¡�� ������ HTML
	private String singer;			//�Ķ���� - ���� �̸�
	private String category;		//�Ķ���� - singerPage�� �޾ƿ´�
	
	public SingerPageAction() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml ������ ���������� �����´�.
		if(reader != null) {System.out.println("SingerPageAction reader pass");}
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);	// sqlMapConfig.xml�� ������ ������ sqlMapper ��ü ����.
		if(sqlMapper != null) {System.out.println("SingerPageAction sqlMapper pass");}
		reader.close();
	}
	
	@Override
	public String execute() throws Exception {
		list = sqlMapper.queryForList("musicSQL.selectWithSinger", singer);
		setTotalCount(list.size());
		
		System.out.println("category : " + category);
		
		setCurrentPage(currentPage);
		page = new pagingAction(currentPage, totalCount, blockCount, blockPage, category);
		
		System.out.println("list : " + list);
		
		//������ HTML ����
		setPagingHtml(page.getPagingHtml().toString());
		
		int lastCount = totalCount;
		
		if(page.getEndCount() < totalCount){
			lastCount = page.getEndCount() + 1;
		}
		
		list = list.subList(page.getStartCount(), lastCount);
		
		return SUCCESS;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
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

	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}

	public static void setSqlMapper(SqlMapClient sqlMapper) {
		SingerPageAction.sqlMapper = sqlMapper;
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

	public String getSinger() {
		return singer;
	}

	public void setSinger(String singer) {
		this.singer = singer;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
	
	

}
