package bzcard.ms.web;

import java.util.List;
import javax.servlet.ServletContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import bzcard.ms.domain.Bzcard;
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


@RequestMapping("detail")
public void detail(int bcno, Model model) {
  Bzcard bz = bzcardService.showDetail(bcno);
  if(bz.getMemo() == null) bz.setMemo(" ");
  
  model.addAttribute("list", bzcardService.showList());
  model.addAttribute("bz", bz);
}

@RequestMapping("edit")
public void edit(int bcno, Model model) {
  Bzcard bz = bzcardService.showDetail(bcno);
  if(bz.getMemo() == null) bz.setMemo(" ");
  
  model.addAttribute("list", bzcardService.showList());
  model.addAttribute("bz", bz);  
}

@RequestMapping("editData")
public String editData(Bzcard bz) {

  int success = bzcardService.editData(bz);
  if(success >0 ) return "redirect: detail?bcno="+bz.getBcno();
  else return "redirect: ../error.jsp";
}

@RequestMapping("form")
public void form(Model model) {
  model.addAttribute("list", bzcardService.showList());
}


@RequestMapping("add")
public String addData(Bzcard bz) {
  bz.setMno(1);
  int success = bzcardService.addData(bz);
  if(success >0 ) return "redirect: list";
  else return "redirect: ../error.jsp";
}


@RequestMapping("delete")
public String deleteData(int bcno) {
  
  int result = bzcardService.removeDate(bcno);
  if(result > 0) return "redirect:list";
  else return "redirect: ../error.jsp";
}

@ResponseBody
@RequestMapping("search")
public List<Bzcard> searchData(String word){

  List<Bzcard> result = bzcardService.search(word);
  if(result.size() == 0) {
    Bzcard no = new Bzcard();
    no.setName("NoData");
    result.add(no);
  }
  return result;

}


}
