package payment.pay_setDTO;

public class payMyInfo_DTO {
	private String id;
	private int delete_cash;
	private int download_count;
	private String pay_name;
	private String pay_benefit;
	
	public String getId() {
		return id;
	}
	public void setId(String my_id) {
		this.id = my_id;
	}
	public int getCash() {
		return delete_cash;
	}
	public void setCash(int delete_cash) {
		this.delete_cash = delete_cash;
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
