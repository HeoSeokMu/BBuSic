package payment.action;

import com.ibatis.sqlmap.client.SqlMapClient;

public interface BBuSicAware {
	
	// public void setSqlMapper(SqlMapClient sqlMapper);		// 내가 한거
	public abstract void setSqlMapper(SqlMapClient sqlMapper);
}
