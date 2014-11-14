package payment.action;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;

import com.opensymphony.xwork2.Action;

public class buyPayment_SendEmailAction implements Action{
	private String check;
	private String email;
	
	private String cash_id;
	private int money_in;
	private int delete_cash;
	
	private int num= (int) (Math.random()*8999)+1000;
	private String host = "smtp.gmail.com";//smtp ����
	private String from = "BBuSic.com";
	private String fromName = "BBUSIC";
	private String subject = "�̸��� �������� �Դϴ�.";			//*����
	private String body="���� ���� ��ȣ�� : "+ num +"�Դϴ�.";		//*����
	
	public String execute() throws Exception {
		System.out.println("buyPayment_SendEmailAction ===============================");
		System.out.println("my_id : "+cash_id);
		System.out.println("money_in : "+money_in);
		System.out.println("email : "+email);
		
		try{
		    // ������Ƽ �� �ν��Ͻ� ������ �⺻����(SMTP ���� ȣ��Ʈ ����)
			Properties props = new Properties();
	
			// G-Mail SMTP ����
			props.put("mail.smtp.starttls.enable","true");
			props.put("mail.transport.protocol", "smtp");
			props.put("mail.smtp.host", host);
			props.put("mail.smtp.connectiontimeout", "1000");
			props.put("mail.smtp.timeout", "1000");
			props.setProperty("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
			props.put("mail.smtp.port", "465");
			props.put("mail.smtp.auth", "true");
			
	
			Session mailSession = Session.getInstance(props,
				  new javax.mail.Authenticator() {
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication("wjdwlsdlfody1", "ahfmrpT3");
					}
				  });
	
			Message msg = new MimeMessage(mailSession);
			msg.setFrom(new InternetAddress(from, MimeUtility.encodeText(fromName,"UTF-8","B")));//������ ��� ����
			InternetAddress[] address1 = {new InternetAddress(email)};		// ���� �̸���
			msg.setRecipients(Message.RecipientType.TO, address1);			// �޴� �������1
			msg.setSubject(subject);										// ���� ����
			msg.setSentDate(new java.util.Date());							// ������ ��¥ ����
			msg.setContent(body,"text/html;charset=euc-kr"); 				// ���� ���� (HTML ����)
	
			Transport.send(msg); // ���� ������
			check="check";
		} catch ( MessagingException ex ) {
		    System.out.print("���� �߼ۿ� ���� �Ͽ����ϴ�.");
		    ex.printStackTrace();
		} catch ( Exception e ) {
			System.out.print("���� �߼ۿ� ���� �Ͽ����ϴ�.");
			e.printStackTrace();
		}
		System.out.println("�������� : " + num);
		System.out.println("check : "+ check);
		
		return SUCCESS;
	}

	public String getCash_id() {
		return cash_id;
	}
	public void setCash_id(String cash_id) {
		this.cash_id = cash_id;
	}
	public int getMoney_in() {
		return money_in;
	}
	public void setMoney_in(int money_in) {
		this.money_in = money_in;
	}
	public int getDelete_cash() {
		return delete_cash;
	}

	public void setDelete_cash(int delete_cash) {
		this.delete_cash = delete_cash;
	}

	public int getNum(){
		return num;
	}
	
	public void setCheck(String check) {
		this.check = check;
	}

	public String getCheck(){
		return check;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}
