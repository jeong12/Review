package bzcard.ms.service.impl;

import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import bzcard.ms.dao.MemberDao;
import bzcard.ms.domain.Member;
import bzcard.ms.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService{

  @Autowired
  MemberDao memberDao;
  
  @Override
  public int addMember(Member m) {
    return memberDao.insert(m);
  }
  
  @Override
  public int chkemail(String email) {
    return memberDao.chkemail(email);
  }
  

@Override
public int login(String email, String pwd) {
  Map<String,Object> params = new HashMap<>();
  params.put("email", email);
  params.put("password", pwd);
  return memberDao.login(params);
}

}
