package bzcard.ms.dao;

import java.util.List;
import bzcard.ms.domain.Bzcard;

public interface BzcardDao {
  
  List<Bzcard> showAll();
  
}
