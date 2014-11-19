package download.action;

import java.util.ArrayList;
import java.util.List;

import board.action.PopupAction;
import upload.dto.musicDTO;
import BBusic.Aware.musicAware;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class downLoadPayAction  implements Action,Preparable,ModelDriven,musicAware {

	public static SqlMapClient sqlMapper;	//SqlMapClient API를 사용하기 위한 sqlMapper 객체.
	
	private static List<musicDTO> musicList2 = PopupAction.getMusicList2();
	
	int[] cNo;
	
	private musicDTO mdto;
	
	int sum=0;
	@Override
	public String execute() throws Exception {		
		
		cNo = mdto.getChkNo();  		//musicDTO 에 선언한 chkNo를 cNo에 담는다.	
		try{
			for (int i = 0; i < cNo.length; i++) {	
				int price = musicList2.get(i).getPrice();
				sum += price;		
			}	
		}catch (IndexOutOfBoundsException e){}
		
		return SUCCESS;
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
