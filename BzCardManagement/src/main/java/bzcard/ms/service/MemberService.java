package bzcard.ms.service;

import org.springframework.stereotype.Service;
import bzcard.ms.domain.Member;

@Service
public interface MemberService {

  int addMember(Member m);
  int login(String email, String pwd);
  int chkemail(String email);
}
