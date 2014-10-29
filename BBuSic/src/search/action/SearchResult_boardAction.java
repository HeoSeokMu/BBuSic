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
	
	public static Reader reader;			//���� ��Ʈ���� ���� reader.
	public static SqlMapClient sqlMapper;	//SqlMapClient API�� ����ϱ� ���� sqlMapper ��ü.
	
	private String searchWord;
	searchDTO sDTO;
		
	private List<musicDTO> list = new ArrayList<musicDTO>();
	
	private int currentPage = 1;	//���� ������
	private int totalCount;			// �� �Խù��� ��
	private int blockCount = 10;	// �� ��������  �Խù��� ��
	private int blockPage = 5; 		// �� ȭ�鿡 ������ ������ ��
	private pagingAction page; 		// ����¡ Ŭ����
	
	//������
	public SearchResult_boardAction() throws IOException{
		
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml ������ ���������� �����´�.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);	// sqlMapConfig.xml�� ������ ������ sqlMapper ��ü ����.
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
		
		list = sqlMapper.queryForList("musicSQL.search_Test", sDTO); //�˻���� �˻��� ���� list��
		totalCount = list.size(); //�˻��� ��ü ���� ����
		setCurrentPage(currentPage);
		page = new pagingAction(currentPage, totalCount, blockCount, blockPage); // ����¡
		
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
