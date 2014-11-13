package payment.pay_setDTO;

import java.util.Date;

public class buyInfo_DTO {
	private String buy_id;
	private String pay_name;
	private String pay_benefit;
	private int download_count;
	private int payment;
	private Date settlement_date;
	private Date expiration_date;
	
	public String getBuy_id() {
		return buy_id;
	}
	public void setBuy_id(String buy_id) {
		this.buy_id = buy_id;
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
	public int getDownload_count() {
		return download_count;
	}
	public void setDownload_count(int download_count) {
		this.download_count = download_count;
	}
	public Date getSettlement_date() {
		return settlement_date;
	}
	public void setSettlement_date(Date settlement_date) {
		this.settlement_date = settlement_date;
	}
	public Date getExpiration_date() {
		return expiration_date;
	}
	public void setExpiration_date(Date expiration_date) {
		this.expiration_date = expiration_date;
	}
	public int getPayment() {
		return payment;
	}
	public void setPayment(int payment) {
		this.payment = payment;
	}
}
