package payment.action;

import com.opensymphony.xwork2.Action;

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;

public class buy_SendEmailAction implements Action{
	private String check;
	private String email;
	
	private String my_id;
	private String money_in;
	private String cash;
	
	private int num= (int) (Math.random()*8999)+1000;
	private String host = "smtp.gmail.com";//smtp ����
	private String from = "BBuSic.com";
	private String fromName = "BBUSIC";
	private String to1;										//*���� �̸���
	private String subject = "�̸��� �������� �Դϴ�.";			//*����
	private String body="���� ���� ��ȣ�� : "+ num +"�Դϴ�.";		//*����
	
	public String execute() throws Exception {
		System.out.println("buy_SendEmailAction ===============================");
		System.out.println("my_id : "+my_id);
		System.out.println("money_in : "+money_in);
		System.out.println("cash : "+cash);
		to1 = email;
		try{
		    // ������Ƽ �� �ν��Ͻ� ������ �⺻����(SMTP ���� ȣ��Ʈ ����)
			Properties props = new Properties();
	
			// G-Mail SMTP ����
			props.put("mail.smtp.starttls.enable","true");
			props.put("mail.transport.protocol", "smtp");
			props.put("mail.smtp.host", host);
			props.setProperty("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
			props.put("mail.smtp.port", "465");
			props.put("mail.smtp.auth", "true");
			
	
			Session mailSession = Session.getInstance(props,
				  new javax.mail.Authenticator() {
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication("ahnmyeongg", "alexgon1");
					}
				  });
	
			Message msg = new MimeMessage(mailSession);
			msg.setFrom(new InternetAddress(from, MimeUtility.encodeText(fromName,"UTF-8","B")));//������ ��� ����
			InternetAddress[] address1 = {new InternetAddress(to1)};
			msg.setRecipients(Message.RecipientType.TO, address1);//�޴� �������1
			msg.setSubject(subject);// ���� ����
			msg.setSentDate(new java.util.Date());// ������ ��¥ ����
			msg.setContent(body,"text/html;charset=euc-kr"); // ���� ���� (HTML ����)
	
			Transport.send(msg); // ���� ������
			check="check";
		} catch ( MessagingException ex ) {
		    System.out.print("���� �߼ۿ� ���� �Ͽ����ϴ�.");
		    ex.printStackTrace();
		} catch ( Exception e ) {
			System.out.print("���� �߼ۿ� ���� �Ͽ����ϴ�.");
			e.printStackTrace();
		}
		
		return SUCCESS;
	}

	public String getMy_id() {
		return my_id;
	}
	public void setMy_id(String my_id) {
		this.my_id = my_id;
	}
	public String getMoney_in() {
		return money_in;
	}
	public void setMoney_in(String money_in) {
		this.money_in = money_in;
	}
	public String getCash() {
		return cash;
	}

	public void setCash(String cash) {
		this.cash = cash;
	}

	public int getNum(){
		return num;
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