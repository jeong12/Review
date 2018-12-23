package bzcard.ms.service.impl;

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
  
  
}
