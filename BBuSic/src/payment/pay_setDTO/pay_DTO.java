package payment.pay_setDTO;

public class pay_DTO {
	private String category;
	private String pay_name;
	private String pay_benefit;
	private int amount;
	private int day30amount;
	private int sale;
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getPay_name() {
		return pay_name;
	}
	public void setPay_name(String pay_name) {
		this.pay_name = pay_name;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getDay30amount() {
		return day30amount;
	}
	public void setDay30amount(int day30amount) {
		this.day30amount = day30amount;
	}
	public int getSale() {
		return sale;
	}
	public void setSale(int sale) {
		this.sale = sale;
	}
	public String getPay_benefit() {
		return pay_benefit;
	}
	public void setPay_benefit(String pay_benefit) {
		this.pay_benefit = pay_benefit;
	}
	
}
