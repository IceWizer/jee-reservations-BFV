package com.bfv.reservation.service.location;

import com.bfv.reservation.model.domain.location.Country;
import com.bfv.reservation.repository.location.CountryRepository;
import com.bfv.reservation.service.GlobalService;
import org.springframework.stereotype.Service;

@Service
public class CountryService extends GlobalService<Country, CountryRepository> {
    public CountryService(CountryRepository repository) {
        super(repository);
    }
}
