package member.action;

import com.ibatis.sqlmap.client.SqlMapClient;

public interface MemberAware {
		public void setSqlMapper(SqlMapClient sqlMapper);

}

