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

import payment.pay_setDTO.buyInfo_DTO;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class buyPayment_SendEmailAction implements Action, Preparable, ModelDriven{
	private String check;
	private String email;
	
	buyInfo_DTO buyinfo;
	private int cash_in;
	
	private int num= (int) (Math.random()*8999)+1000;
	private String host = "smtp.gmail.com";//smtp ����
	private String from = "BBuSic.com";
	private String fromName = "BBUSIC";
	private String subject = "�̸��� �������� �Դϴ�.";			//*����
	private String body="���� ���� ��ȣ�� : "+ num +"�Դϴ�.";		//*����
	
	public String execute() throws Exception {
		System.out.println("buyPayment_SendEmailAction ===============================");
		System.out.println("buy_id : "+buyinfo.getBuy_id());
		System.out.println("payment : "+buyinfo.getPayment());
		System.out.println("payname : "+buyinfo.getPay_name());
		System.out.println("benefit : "+buyinfo.getPay_benefit());
		System.out.println("amount : "+buyinfo.getAmount());
		System.out.println("buy_option : "+buyinfo.getBuy_option());
		System.out.println("download_count : "+buyinfo.getDownload_count());
		
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
	
	@Override
	public void prepare() throws Exception {
		buyinfo = new buyInfo_DTO();
	}
	
	@Override
	public Object getModel() {
		// TODO Auto-generated method stub
		return buyinfo;
	}

	public buyInfo_DTO getBuyinfo() {
		return buyinfo;
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

	public int getCash_in() {
		return cash_in;
	}

	public void setCash_in(int cash_in) {
		this.cash_in = cash_in;
	}
}
