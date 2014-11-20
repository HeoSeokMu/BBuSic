package payment.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import payment.pay_setDTO.buyInfo_DTO;
import payment.pay_setDTO.cashCharge_DTO;
import upload.dto.musicDTO;
import upload.dto.musicDTO2;
import BBusic.Aware.musicAware;
import payment.action.pagingAction;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class pay_useFormAction implements Action, BBuSicAware {

	public static SqlMapClient sqlMapper;
	private static List<buyInfo_DTO> list = new ArrayList<buyInfo_DTO>();

	private int currentPage = 1; // ���� ������
	private int totalCount; // �� �Խù��� ��
	private int blockCount = 10; // �� �������� �Խù��� ��
	private int blockPage = 5; // �� ȭ�鿡 ������ ������ ��
	private pagingAction page; // ����¡ Ŭ����
	private String pagingHtml; // ����¡�� ������ HTML
	private String id;
	private String type = "����";
	
	@Override
	public String execute() throws Exception {
		System.out.println("pay_useFormAction ====================");
		System.out.println("id : " + id);
		System.out.println("type : " + type);
		
		list = sqlMapper.queryForList("payment_buy.selectBuyInfo_use1", id);
		
		totalCount = list.size(); // ��ü �� ������ ���Ѵ�.
		
		// paging
		page = new pagingAction(currentPage, totalCount, blockCount, blockPage); // pagingAction ��ü ����.
		int lastCount = totalCount;
		setPagingHtml(page.getPagingHtml().toString()); // ������ HTML ����.

		// ���� �������� ������ ���� ��ȣ�� ��ü�� ������ �� ��ȣ���� ������ lastCount�� +1 ��ȣ�� ����.
		if (page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;

		// ��ü ����Ʈ���� ���� ��������ŭ�� ����Ʈ�� �����´�.
		list = list.subList(page.getStartCount(), lastCount);

		return SUCCESS;
	}

	public List<buyInfo_DTO> getList() {
		return list;
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
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
}
