package payment.action;

import java.io.Reader;

import payment.pay_setDTO.pay_DTO;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class payInsertAction implements Action, Preparable, ModelDriven, BBuSicAware {
	
	pay_DTO payDTO;
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	public payInsertAction() {
		try{
			System.out.println("try 실행");
			reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml 파일의 설정내용을 가져온다.
			if(reader != null) { System.out.println("reader pass"); } 	// sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성.
			sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);	
			if(sqlMapper != null) { System.out.println("sqlMapper pass"); }
			reader.close();	
		} catch(Exception e) {
			System.out.println("catch() 실행");
		}
	}
	
	
	public String execute() throws Exception {
		System.out.println(payDTO.getCategory());
		System.out.println(payDTO.getPay_name());
		System.out.println(payDTO.getPay_benefit());
		System.out.println(payDTO.getAmount());
		System.out.println(payDTO.getDay30amount());
		System.out.println(payDTO.getSale());
		
		sqlMapper.insert("payment.insertPay", payDTO);
		
		return SUCCESS;
	}
	
	@Override
	public void prepare() throws Exception {
		payDTO = new pay_DTO();
	}
	
	@Override
	public Object getModel() {
		// TODO Auto-generated method stub
		return payDTO;
	}
	
	@Override
	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}
}
