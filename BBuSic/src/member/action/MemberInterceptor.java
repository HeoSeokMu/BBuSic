package member.action;

import java.io.IOException;
import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class MemberInterceptor implements Interceptor {
	public static Reader reader; // 파일 스트림을 위한 reader.
	public static SqlMapClient sqlMapper; // SqlMapClient API를 사용하기 위한 sqlMapper

	public void init() {
		try {
			reader = Resources.getResourceAsReader("sqlMapConfig.xml");
			sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
			reader.close();
		} catch (IOException e) {
			System.out.println("catch");
			e.printStackTrace();
		}
	}

	public void destroy() {
	}

	public String intercept(ActionInvocation invocation) throws Exception {
		Object action = invocation.getAction();

		if (action instanceof MemberAware) {
			MemberAware sqlAware = (MemberAware)action;
			sqlAware.setSqlMapper(sqlMapper);
		}
		return invocation.invoke();
	}
}