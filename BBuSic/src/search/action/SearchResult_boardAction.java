package search.action;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import upload.dto.musicDTO;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.Action;

public class SearchResult_boardAction implements Action{
	
	public static Reader reader;			//���� ��Ʈ���� ���� reader.
	public static SqlMapClient sqlMapper;	//SqlMapClient API�� ����ϱ� ���� sqlMapper ��ü.
	
	private String searchWord;
		
	private List<musicDTO> list1 = new ArrayList<musicDTO>();		//artistlist
	private List<musicDTO> list2 = new ArrayList<musicDTO>();		//singerlist
	private List<musicDTO> list3 = new ArrayList<musicDTO>();		//albumlist
	
	private int art_count;	//list1 ��ü�۰���
	private int sig_count;	//list2 ��ü�۰���
	private int alb_count;	//list3 ��ü�۰���
	
	private int blockCount = 10;	// �� ��������  �Խù��� ��
	private int blockPage = 5; 		// �� ȭ�鿡 ������ ������ ��
	
	//������
	public SearchResult_boardAction() throws IOException{
		
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml ������ ���������� �����´�.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);	// sqlMapConfig.xml�� ������ ������ sqlMapper ��ü ����.
		reader.close();
	}
	
	@Override
	public String execute() throws Exception {
		System.out.println("searchword : " + searchWord);
		
		list1 = sqlMapper.queryForList("musicSQL.searchWithArtist", searchWord);
		list2 = sqlMapper.queryForList("musicSQL.searchWithSong", searchWord);
		list3 = sqlMapper.queryForList("musicSQL.searchWithAlbum", searchWord);
		
		System.out.println("list1" + list1);
		System.out.println("list2" + list2);
		System.out.println("list3" + list3);
		
		art_count = list1.size();
		sig_count = list2.size();
		alb_count = list3.size();
		
		return SUCCESS;
	}

	public String getSearchWord() {
		return searchWord;
	}

	public void setSearchWord(String searchWord) {
		this.searchWord = searchWord;
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

	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}

	public static void setSqlMapper(SqlMapClient sqlMapper) {
		SearchResult_boardAction.sqlMapper = sqlMapper;
	}

	public void setList1(List<musicDTO> list1) {
		this.list1 = list1;
	}

	public void setList2(List<musicDTO> list2) {
		this.list2 = list2;
	}

	public void setList3(List<musicDTO> list3) {
		this.list3 = list3;
	}

	public int getArt_count() {
		return art_count;
	}

	public void setArt_count(int art_count) {
		this.art_count = art_count;
	}

	public int getSig_count() {
		return sig_count;
	}

	public void setSig_count(int sig_count) {
		this.sig_count = sig_count;
	}

	public int getAlb_count() {
		return alb_count;
	}

	public void setAlb_count(int alb_count) {
		this.alb_count = alb_count;
	}

	public List<musicDTO> getList1() {
		return list1;
	}

	public List<musicDTO> getList2() {
		return list2;
	}

	public List<musicDTO> getList3() {
		return list3;
	}
	
	
	
}
