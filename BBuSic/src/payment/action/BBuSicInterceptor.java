package payment.action;

import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class BBuSicInterceptor implements Interceptor{
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	public void init() {
		System.out.println("init() 실행");
		try{
			System.out.println("try 실행");
			reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml 파일의 설정내용을 가져온다.
			if(reader != null) { System.out.println("BBuSicInterceptor reader pass"); } 	// sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성.
			sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);	
			if(sqlMapper != null) { System.out.println("BBuSicInterceptor sqlMapper pass"); }
			reader.close();	
		} catch(Exception e) {
			System.out.println("catch() 실행");
		}
	}
	
	@Override
	public void destroy() {
		
		
	}
	
	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		
		Object action = invocation.getAction();
		
		if(action instanceof BBuSicAware) {
			BBuSicAware sqlAware = (BBuSicAware)action;
			sqlAware.setSqlMapper(sqlMapper);
		} 
		return invocation.invoke();
	}
}
