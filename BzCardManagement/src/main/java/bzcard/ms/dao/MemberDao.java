package bzcard.ms.dao;

import java.util.Map;
import bzcard.ms.domain.Member;

public interface MemberDao {
  
  int insert(Member member);
  int login(Map<String,Object> params);
  int chkemail(String id);
  
}
