package bzcard.ms.web;

import javax.servlet.ServletContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import bzcard.ms.domain.Member;
import bzcard.ms.service.MemberService;

@Controller
@RequestMapping("/signup")
public class SginupController {

  MemberService memberService;
  ServletContext sc;
  
  public SginupController(MemberService memberService, ServletContext sc) {
    super();
    this.memberService = memberService;
    this.sc = sc;
  }
  
  @RequestMapping("form")
  public void form() {
    
  }
  
  @RequestMapping("add")
  public String add(Member m) {
    memberService.addMember(m);
  return "redirect:../auth/login";
  }
  
  
  
}
