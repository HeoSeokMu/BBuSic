package board.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import upload.dto.musicDTO;
import upload.dto.musicDTO2;
import BBusic.Aware.musicAware;
import board.action.Chart_BoardAction;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;


public class PopupAction implements Action, Preparable,ModelDriven,musicAware{

	public static SqlMapClient sqlMapper;	//SqlMapClient API를 사용하기 위한 sqlMapper 객체.
	
	private static List<musicDTO> list = new ArrayList<musicDTO>();
	private static List<musicDTO> musicList2 = new ArrayList<musicDTO>();
	private static ArrayList<Integer> indexlist = new ArrayList<Integer>();
	
	private musicDTO mdto;
	private musicDTO2 mdto2;
	private Map session;
	private String id;
	private String benefit;
	private int[] cNo;


	@Override
	public String execute() throws Exception {
		cNo = mdto.getChkNo();   			//musicDTO 에 선언한 chkNo를 cNo에 담는다.
		list = sqlMapper.queryForList("musicSQL.newSelectAll");
		
		session =ActionContext.getContext().getSession();
		id = (String) session.get("memId");
		
		String limit = "무제한 듣기";
		mdto2 = new musicDTO2();
		mdto2.setLimit(limit);
		mdto2.setId(id);
		benefit = (String)sqlMapper.queryForObject("musicSQL.benefit", mdto2);
		if(benefit !=null){			
			benefit = benefit.substring(0, 6);			
		}else{	}
		
		for (int i = 0; i < cNo.length; i++) {		
			musicList2.add(i, list.get(cNo[i]));	
			indexlist.add(cNo[i]);
		}
		return SUCCESS;
	}

	/* 팝업 리스트 삭제 */
	public String deleteListAction() throws Exception{		
		musicList2.clear();
		return SUCCESS;
	}

	

	
	
	public ArrayList<Integer> getIndexlist() {
		return indexlist;
	}

	public String getBenefit() {
		return benefit;
	}

	public void setBenefit(String benefit) {
		this.benefit = benefit;
	}
	
	public int[] getcNo() {
		return cNo;
	}
	public static List<musicDTO> getMusicList2() {
		return musicList2;
	}

	public static void setMusicList2(List<musicDTO> musicList2) {
		PopupAction.musicList2 = musicList2;
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
