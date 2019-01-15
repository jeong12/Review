package bzcard.ms.dao;

import java.util.List;
import bzcard.ms.domain.Bzcard;

public interface BzcardDao {
  
  List<Bzcard> showAll();
  Bzcard showDetail(int bcno);
  int editData(Bzcard bz);
  int addData(Bzcard bz);
  int deleteData(int bcno);
  List<Bzcard> searchResult(String word);
}
