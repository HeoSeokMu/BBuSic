package member.action;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import java.util.*;

import javax.mail.*;
import javax.mail.internet.*;

import member.DTO.MemberDTO;

public class SendPwConfirmAction implements Action, ModelDriven, Preparable{
	private String date;
	private String check;
	MemberDTO mDTO;
	private int num= (int) (Math.random()*8999)+1000;
	private String host = "smtp.gmail.com";//smtp 서버
	private String from = "BBuSic.com";
	private String fromName = "BBUSIC";
	private String to1;										//*보낼 이메일
	private String subject = "[BBUSIC] 인증번호를 알려드립니다";			//*제목
	private String body="본인 인증 번호는 : "+ num +"입니다.";		//*내용
	
	public String execute() throws Exception {
		to1 = mDTO.getEmail();
		try{
		    // 프로퍼티 값 인스턴스 생성과 기본세션(SMTP 서버 호스트 지정)
		Properties props = new Properties();

		// G-Mail SMTP 사용시
		props.put("mail.smtp.starttls.enable","true");
		props.put("mail.transport.protocol", "smtp");
		props.put("mail.smtp.host", host);
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
		msg.setFrom(new InternetAddress(from, MimeUtility.encodeText(fromName,"UTF-8","B")));//보내는 사람 설정
		InternetAddress[] address1 = {new InternetAddress(to1)};
		msg.setRecipients(Message.RecipientType.TO, address1);//받는 사람설정1
		msg.setSubject(subject);// 제목 설정
		msg.setSentDate(new java.util.Date());// 보내는 날짜 설정
		msg.setContent(body,"text/html;charset=euc-kr"); // 내용 설정 (HTML 형식)

		Transport.send(msg); // 메일 보내기
		check="check";
		} catch ( MessagingException ex ) {
		    System.out.print("메일 발송에 실패 하였습니다.");
		    ex.printStackTrace();
		} catch ( Exception e ){
			System.out.print("메일 발송에 실패 하였습니다.");
			e.printStackTrace();
		}
			return SUCCESS;
	}

	public void prepare() throws Exception {
		mDTO = new MemberDTO();
	}

	public Object getModel() {
		return mDTO;
	}
	
	public int getNum(){
		return num;
	}
	
	public String getCheck(){
		return check;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
}