package payment.pay_setDTO;

public class payMyInfo_DTO {
	private String my_id;
	private int cash;
	private int download_count;
	private String pay_name;
	private String pay_benefit;
	
	public String getMy_id() {
		return my_id;
	}
	public void setMy_id(String my_id) {
		this.my_id = my_id;
	}
	public int getCash() {
		return cash;
	}
	public void setCash(int cash) {
		this.cash = cash;
	}
	public int getDownload_count() {
		return download_count;
	}
	public void setDownload_count(int download_count) {
		this.download_count = download_count;
	}
	public String getPay_name() {
		return pay_name;
	}
	public void setPay_name(String pay_name) {
		this.pay_name = pay_name;
	}
	public String getPay_benefit() {
		return pay_benefit;
	}
	public void setPay_benefit(String pay_benefit) {
		this.pay_benefit = pay_benefit;
	}
}
