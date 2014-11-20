package member.action;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import java.util.*;

import javax.mail.*;
import javax.mail.internet.*;

import member.DTO.MemberDTO;

public class SendEmailAction implements Action, ModelDriven, Preparable, MemberAware{
	private String check;
	MemberDTO mDTO;
	private List<MemberDTO> list;
	SqlMapClient sqlMapper;
	private List<String> emailList = new ArrayList<String>();
	
	private int num= (int) (Math.random()*8999)+1000;
	private String host = "smtp.gmail.com";//smtp ����
	private String from = "BBuSic.com";
	private String fromName = "BBUSIC";
	private String to1;										//*���� �̸���
	private String subject = "[BBUSIC] ������ȣ�� �˷��帳�ϴ�";			//*����
	private String body="���� ���� ��ȣ�� : "+ num +"�Դϴ�.";		//*����
	
	public String execute() throws Exception {
		to1 = mDTO.getEmail();
		list = sqlMapper.queryForList("member.selectEmail");
		for(MemberDTO dt : list) {
			emailList.add(dt.getEmail());
		}
		
		if(emailList.contains(to1)){
			check = "overlap";
			return SUCCESS;
		}else{
			System.out.print("0");		
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
						return new PasswordAuthentication("wjdwlsdlfody1", "ahfmrpT3");
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
			} catch ( Exception e ){
				System.out.print("���� �߼ۿ� ���� �Ͽ����ϴ�.");
				e.printStackTrace();
			}
			return SUCCESS;
		}
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

	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}
}