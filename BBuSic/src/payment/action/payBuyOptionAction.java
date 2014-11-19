package payment.action;

import payment.pay_setDTO.pay_DTO;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class payBuyOptionAction implements Action, Preparable, ModelDriven, BBuSicAware {
	
	private pay_DTO payDTO;
	private int delete_cash;
	public SqlMapClient sqlMapper;
	private String buy_id;
	private String buy_type;
	
	@Override
	public String execute() throws Exception {
		
		System.out.println("pay_name : " + payDTO.getPay_name());
		System.out.println("pay_benefit : " + payDTO.getPay_benefit());
		System.out.println("amount : " + payDTO.getAmount());
		System.out.println("sale : " + payDTO.getSale());
		System.out.println("download_count : " + payDTO.getDownload_count());
		
		if(buy_id.equals(" ") || buy_id != null) {
			delete_cash = (int)sqlMapper.queryForObject("payment_cash.selectCash_use", buy_id);
		}
		
		return SUCCESS;
	}
	
	@Override
	public void prepare() throws Exception {
		payDTO = new pay_DTO();
	}
	
	@Override
	public Object getModel() {
		// TODO Auto-generated method stub
		return payDTO;
	}
	
	@Override
	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}

	public int getDelete_cash() {
		return delete_cash;
	}

	public String getBuy_id() {
		return buy_id;
	}

	public void setBuy_id(String buy_id) {
		this.buy_id = buy_id;
	}

	public String getBuy_type() {
		return buy_type;
	}

	public void setBuy_type(String buy_type) {
		this.buy_type = buy_type;
	}
}
