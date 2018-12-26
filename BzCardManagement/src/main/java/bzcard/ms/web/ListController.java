package bzcard.ms.web;

import javax.servlet.ServletContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import bzcard.ms.service.BzcardService;
import bzcard.ms.service.MemberService;

@Controller
@RequestMapping("/bzcard")
public class ListController {

  BzcardService bzcardService;
  MemberService memberService;
  ServletContext sc;
  
public ListController(BzcardService bzcardService, MemberService memberService,
      ServletContext sc) {
    super();
    this.bzcardService = bzcardService;
    this.memberService = memberService;
    this.sc = sc;
  }

@RequestMapping("list")
  public void list(Model model) {
    model.addAttribute("list", bzcardService.showList());
  }
  
}
