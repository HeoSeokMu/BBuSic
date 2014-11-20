package board.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import upload.dto.musicDTO;
import BBusic.Aware.musicAware;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import download.dto.downLoadCountDTO;
import download.dto.downLoadCountDTO2;
import download.dto.downLoadDTO;

public class downPopUpAction implements Action, Preparable,ModelDriven,musicAware {

	public static SqlMapClient sqlMapper;	//SqlMapClient API를 사용하기 위한 sqlMapper 객체.
	
	private static List<musicDTO> list = new ArrayList<musicDTO>();
	private static List<musicDTO> musicList2 = new ArrayList<musicDTO>();
	private int[] cNo;
	int sum;
	
	private downLoadDTO downloadDTO; //id, sum
	private downLoadCountDTO dCountDTO; //id, count
	private downLoadCountDTO2 dCountDTO2; //id, pay_name
	private Map session;
	private String id;
	private int dCount;
	
	private musicDTO mdto;
	
	@Override
	public String execute() throws Exception {
		list = sqlMapper.queryForList("musicSQL.newSelectAll");
		
		session =ActionContext.getContext().getSession();
		id = (String) session.get("memId");		
		cNo = mdto.getChkNo();   			//musicDTO 에 선언한 chkNo를 cNo에 담는다.
		String pay_name	="프리클럽";
		
		downloadDTO = new downLoadDTO();		
		downloadDTO.setId(id);
		
		/*count 감소*/
		dCountDTO = new downLoadCountDTO();
		dCountDTO.setId(id);
		
		/*id 와 pay_name 으로 download_count 검색*/
		dCountDTO2 = new downLoadCountDTO2();
		dCountDTO2.setId(id);
		dCountDTO2.setPay_name(pay_name);
				
		dCount =(int) sqlMapper.queryForObject("payment_buy.selectDownloadCount",dCountDTO2);
		//SELECT download_count FROM bbu_buyinfo where buy_id=#id#  AND PAY_NAME=#pay_name#
				
		int count = 0;
		try{		
			for (int i = 0; i < cNo.length; i++) {		
				musicList2.add(list.get(cNo[i]));	
				sum=list.get(cNo[i]).getPrice();
				count++;
			}
			downloadDTO.setSum(sum);
			sqlMapper.update("payment_cash.updateDownLoad",downloadDTO); //cash , sub_cash 업데이트
			
			dCountDTO.setCount(count);
			
			if(dCount != 0){
				sqlMapper.update("payment_buy.updateDownloadCount", dCountDTO); //카운트 값 감소
			}else{}
	}catch (IndexOutOfBoundsException e){}	
		return SUCCESS;
	}
	
	
	
	
	public static List<musicDTO> getList() {
		return list;
	}

	public static void setList(List<musicDTO> list) {
		downPopUpAction.list = list;
	}

	public int getdCount() {
		return dCount;
	}
	public void setdCount(int dCount) {
		this.dCount = dCount;
	}
	public int getSum() {
		return sum;
	}
	
	public void setSum(int sum) {
		this.sum = sum;
	}
	
	public int[] getcNo() {
		return cNo;
	}
	public static List<musicDTO> getMusicList2() {
		return musicList2;
	}

	public static void setMusicList2(List<musicDTO> musicList2) {
		downPopUpAction.musicList2 = musicList2;
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
