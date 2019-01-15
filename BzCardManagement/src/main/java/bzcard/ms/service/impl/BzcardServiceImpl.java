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

  @Override
  public Bzcard showDetail(int bcno) {
    return bzcardDao.showDetail(bcno);
  }
  
  @Override
  public int editData(Bzcard bz) {
    return bzcardDao.editData(bz);
  }
  
  @Override
  public int addData(Bzcard bz) {
    return bzcardDao.addData(bz);
  }
  
  @Override
  public int removeDate(int bcno) {
    return bzcardDao.deleteData(bcno);
  }
  
  @Override
  public List<Bzcard> search(String word) {
    return bzcardDao.searchResult(word);
  }
  
}
