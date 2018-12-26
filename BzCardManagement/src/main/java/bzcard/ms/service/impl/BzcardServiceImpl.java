package bzcard.ms.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import bzcard.ms.dao.BzcardDao;
import bzcard.ms.domain.Bzcard;
import bzcard.ms.service.BzcardService;

@Service
public class BzcardServiceImpl implements BzcardService{

  @Autowired
  BzcardDao bzcardDao;
  
  @Override
  public List<Bzcard> showList() {
    return bzcardDao.showAll();
  }

}
