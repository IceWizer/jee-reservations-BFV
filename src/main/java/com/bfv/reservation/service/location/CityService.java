package com.bfv.reservation.service.location;

import org.springframework.stereotype.Service;

import com.bfv.reservation.model.domain.location.City;
import com.bfv.reservation.repository.location.CityRepository;
import com.bfv.reservation.service.GlobalService;

@Service
public class CityService extends GlobalService<City, CityRepository> {

    public CityService(CityRepository repository) {
        super(repository);
    }
}
