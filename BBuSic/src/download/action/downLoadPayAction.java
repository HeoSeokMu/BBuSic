package download.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import payment.pay_setDTO.cashCharge_DTO;
import upload.dto.musicDTO;
import BBusic.Aware.musicAware;
import board.action.PopupAction;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import download.dto.downLoadCountDTO;
import download.dto.downLoadCountDTO2;
import download.dto.downLoadDTO;

public class downLoadPayAction  implements Action,Preparable,ModelDriven,musicAware {

	public static SqlMapClient sqlMapper;	//SqlMapClient API를 사용하기 위한 sqlMapper 객체.
	
	private static List<musicDTO> musicList2 = PopupAction.getMusicList2();
	private static List<musicDTO> musicList3 = new ArrayList<musicDTO>();
	int[] cNo;
	int sum;
	
	private downLoadDTO downloadDTO; //id, sum, content
	private downLoadCountDTO dCountDTO; //id, count
	private downLoadCountDTO2 dCountDTO2; //id, pay_name
	private Map session;
	private String id;
	private int dCount;
	private cashCharge_DTO cash_DTO;

	private musicDTO mdto;
	
	@Override
	public String execute() throws Exception {				
		session =ActionContext.getContext().getSession();
		id = (String) session.get("memId");
		cNo = mdto.getChkNo();  		//musicDTO 에 선언한 chkNo를 cNo에 담는다.
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
					musicList3.add(musicList2.get(cNo[i]));
					sum+=musicList3.get(cNo[i]).getPrice();
					count++;
				}
				downloadDTO.setSum(sum);
				sqlMapper.update("payment_cash.updateDownLoad",downloadDTO); //cash , sub_cash 업데이트
				
				if(dCount != 0){
					sqlMapper.update("payment_buy.updateDownloadCount", dCountDTO); //카운트 값 감소
				}else{}
		}catch (IndexOutOfBoundsException e){}		
		return SUCCESS;
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
	
	public static List<musicDTO> getMusicList3() {
		return musicList3;
	}

	public static void setMusicList3(List<musicDTO> musicList3) {
		downLoadPayAction.musicList3 = musicList3;
	}
	
	public int[] getcNo() {
		return cNo;
	}

	@Override
	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper=sqlMapper;
	}

	@Override
	public Object getModel() {
		return mdto;
	}

	@Override
	public void prepare() throws Exception {
		this.mdto= new musicDTO();
	}

	public static List<musicDTO> getMusicList2() {
		return musicList2;
	}

	public static void setMusicList2(List<musicDTO> musicList2) {
		downLoadPayAction.musicList2 = musicList2;
	}
}
