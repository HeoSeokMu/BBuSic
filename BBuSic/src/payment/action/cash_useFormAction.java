package payment.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import payment.pay_setDTO.buyInfo_DTO;
import payment.pay_setDTO.cashCharge_DTO;
import upload.dto.musicDTO;
import upload.dto.musicDTO2;
import BBusic.Aware.musicAware;
import board.action.pagingAction;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class cash_useFormAction implements Action, BBuSicAware {

	public static SqlMapClient sqlMapper;
	private static List<cashCharge_DTO> list = new ArrayList<cashCharge_DTO>();

	private int currentPage = 1; // 현재 페이지
	private int totalCount; // 총 게시물의 수
	private int blockCount = 10; // 한 페이지의 게시물의 수
	private int blockPage = 5; // 한 화면에 보여줄 페이지 수
	private pagingAction page; // 페이징 클래스
	private String pagingHtml; // 페이징을 구현한 HTML
	private String type; // 장르

	@Override
	public String execute() throws Exception {
		System.out.println("execute" + sqlMapper);
		System.out.println("type : " + type);
		
		list = sqlMapper.queryForList("payment_cash.genreSelectAll", type);
		
		totalCount = list.size(); // 전체 글 갯수를 구한다.


		setPagingHtml(page.getPagingHtml().toString()); // 페이지 HTML 생성.
		// paging

		int lastCount = totalCount;

		// 현재 페이지의 마지막 글의 번호가 전체의 마지막 글 번호보다 작으면 lastCount를 +1 번호로 설정.
		if (page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;

		// 전체 리스트에서 현재 페이지만큼의 리스트만 가져온다.
		list = list.subList(page.getStartCount(), lastCount);

		return SUCCESS;
	}

	public List<cashCharge_DTO> getList() {
		return list;
	}

	public void setList(List<cashCharge_DTO> list) {
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

	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;

	}
}
