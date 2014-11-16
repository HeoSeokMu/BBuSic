package payment.pay_setDTO;

public class payMyInfo_DTO {
	private String id;
	private int delete_cash;
	private int download_count;
	private String delete_payname;
	private String delete_paybenefit;
	
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
	public int getDelete_cash() {
		return delete_cash;
	}
	public void setDelete_cash(int delete_cash) {
		this.delete_cash = delete_cash;
	}
	public String getDelete_payname() {
		return delete_payname;
	}
	public void setDelete_payname(String delete_payname) {
		this.delete_payname = delete_payname;
	}
	public String getDelete_paybenefit() {
		return delete_paybenefit;
	}
	public void setDelete_paybenefit(String delete_paybenefit) {
		this.delete_paybenefit = delete_paybenefit;
	}
}
