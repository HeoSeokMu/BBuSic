package payment.pay_setDTO;

import java.util.Date;

public class cashCharge_DTO {
	private String cash_id;
	private Date cashuse_date;
	private String content;
	private int cash;
	private int sub_cash;
	private int delete_cash;
	private Date expiration_date;
	
	public String getCash_id() {
		return cash_id;
	}
	public void setCash_id(String cash_id) {
		this.cash_id = cash_id;
	}
	public Date getCashuse_date() {
		return cashuse_date;
	}
	public void setCashuse_date(Date cashuse_date) {
		this.cashuse_date = cashuse_date;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getCash() {
		return cash;
	}
	public void setCash(int cash) {
		this.cash = cash;
	}
	public int getSub_cash() {
		return sub_cash;
	}
	public void setSub_cash(int sub_cash) {
		this.sub_cash = sub_cash;
	}
	public int getDelete_cash() {
		return delete_cash;
	}
	public void setDelete_cash(int delete_cash) {
		this.delete_cash = delete_cash;
	}
	public Date getExpiration_date() {
		return expiration_date;
	}
	public void setExpiration_date(Date expiration_date) {
		this.expiration_date = expiration_date;
	}
}
