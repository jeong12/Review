package bzcard.ms.service;

import java.util.List;
import org.springframework.stereotype.Service;
import bzcard.ms.domain.Bzcard;

@Service
public interface BzcardService {

  List<Bzcard> showList();
}
