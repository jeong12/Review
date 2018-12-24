package bzcard.ms.web;

import javax.servlet.ServletContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import bzcard.ms.domain.Member;
import bzcard.ms.service.MemberService;

@Controller
@RequestMapping("/auth")
public class AuthContoller {

  MemberService memberService;
  ServletContext sc;
  
  
  public AuthContoller(MemberService memberService, ServletContext sc) {
    super();
    this.memberService = memberService;
    this.sc = sc;
  }
  
@RequestMapping("login")
  public void login() {
    
  }
  
  @ResponseBody
  @RequestMapping("confirm")
  public String confirm(String email, String pwd) {

    int no = memberService.login(email, pwd);
    int eno = memberService.chkemail(email);
    if(no == 1) {
      return "success";
    }else if(eno == 1) {
      return "wrong";
    }else if(eno == 0) {
      return "nodata";
    }
    return "null";
  }
}
