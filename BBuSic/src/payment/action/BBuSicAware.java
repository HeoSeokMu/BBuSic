package payment.action;

import com.ibatis.sqlmap.client.SqlMapClient;

public interface BBuSicAware {
	
	// public void setSqlMapper(SqlMapClient sqlMapper);		// ���� �Ѱ�
	public abstract void setSqlMapper(SqlMapClient sqlMapper);
}
