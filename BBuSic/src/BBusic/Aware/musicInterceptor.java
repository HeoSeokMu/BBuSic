package BBusic.Aware;

import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;



public class musicInterceptor implements Interceptor{
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;

	

	@Override
	public void init() {
		
		try{
			reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml ������ ���������� �����´�.			
			sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); // sqlMapConfig.xml�� ������ ������ sqlMapper ��ü ����.
			reader.close();
		}catch(Exception e){
			e.printStackTrace();
		}		
	}

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {	 
		Object action = invocation.getAction();		
		if(action instanceof musicAware) {
			musicAware sqlAware = (musicAware)action;
			sqlAware.setSqlMapper(sqlMapper);
		} 
		return invocation.invoke();
	}
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}
	
}
