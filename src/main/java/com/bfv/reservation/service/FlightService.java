package com.bfv.reservation.service;

import com.bfv.reservation.model.domain.flight.Flight;
import com.bfv.reservation.repository.flight.FlightRepository;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class FlightService extends GlobalService<Flight, FlightRepository> {
    public FlightService(FlightRepository flightRepository) {
        super(flightRepository);
    }

    public Optional<Flight> getFlightByFlightNumber(String flightNumber) {
        return getRepository().findByFlightNumber(flightNumber);
    }
}
