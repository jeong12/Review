package bzcard.ms.service;

import java.util.List;
import org.springframework.stereotype.Service;
import bzcard.ms.domain.Bzcard;

@Service
public interface BzcardService {

  List<Bzcard> showList();
  Bzcard showDetail(int bcno);
  int editData(Bzcard bz);
  int addData(Bzcard bz);
  int removeDate(int bcno);
  List<Bzcard> search(String word);
}
