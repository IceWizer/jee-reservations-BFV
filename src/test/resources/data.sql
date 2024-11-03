INSERT INTO
    "user" (
        id,
        email,
        password,
        first_name,
        last_name,
        admin
    )
VALUES (
        'test_user-repository_find-by-email',
        'test_user-repository_find-by-email@icewize.fr',
        'password',
        'Test',
        'User',
        false
    );

INSERT INTO
    `timezone` (id, name, time_offset)
VALUES (
        'greenwich-meridian-time',
        'Greenwich Meridian Time',
        0
    ),
    (
        'central-european-time',
        'Central European Time',
        3600
    );

INSERT INTO
    country (id, name)
VALUES ('france', 'France'),
    ('germany', 'Germany'),
    (
        'united-kingdom',
        'United Kingdom'
    ),
    (
        'united-states',
        'United States'
    );

INSERT INTO
    city (
        id,
        name,
        timezone_id,
        country_id
    )
VALUES (
        'paris',
        'Paris',
        'greenwich-meridian-time',
        'france'
    ),
    (
        'berlin',
        'Berlin',
        'central-european-time',
        'germany'
    ),
    (
        'london',
        'London',
        'greenwich-meridian-time',
        'united-kingdom'
    ),
    (
        'new-york',
        'New York',
        'greenwich-meridian-time',
        'united-states'
    );

INSERT INTO
    airport (
        id,
        name,
        iata,
        icao,
        lat,
        lon,
        alt,
        size,
        city_id
    )
VALUES (
        'paris-charles-de-gaulle',
        'Paris Charles de Gaulle',
        'CDG',
        'LFPG',
        49.012779,
        2.55,
        392,
        3000,
        'paris'
    ),
    (
        'berlin-tegel',
        'Berlin Tegel',
        'TXL',
        'EDDT',
        52.5597,
        13.2877,
        122,
        2000,
        'berlin'
    ),
    (
        'london-heathrow',
        'London Heathrow',
        'LHR',
        'EGLL',
        51.4706,
        -0.461941,
        83,
        5000,
        'london'
    ),
    (
        'new-york-jfk',
        'New York JFK',
        'JFK',
        'KJFK',
        40.639751,
        -73.778925,
        13,
        6000,
        'new-york'
    );

INSERT INTO
    aircraft (id, name, code, capacity)
VALUES (
        'airbus-a320',
        'Airbus A320',
        'A320',
        150
    ),
    (
        'boeing-737',
        'Boeing 737',
        'B737',
        200
    ),
    (
        'boeing-747',
        'Boeing 747',
        'B747',
        400
    );

INSERT INTO
    airline (
        id,
        name,
        code,
        icao,
        aircraft_id
    )
VALUES (
        'air-france',
        'Air France',
        'AF',
        'AFR',
        'airbus-a320'
    ),
    (
        'british-airways',
        'British Airways',
        'BA',
        'BAW',
        'boeing-737'
    ),
    (
        'american-airlines',
        'American Airlines',
        'AA',
        'AAL',
        'boeing-747'
    );

INSERT INTO
    flight (
        id,
        flight_number,
        departure_airport_id,
        arrival_airport_id,
        airline_id,
        departure_time,
        arrival_time,
        duration,
        price,
        available_seats
    )
VALUES (
        'paris-berlin',
        'AF123',
        'paris-charles-de-gaulle',
        'berlin-tegel',
        'air-france',
        TIMESTAMP '2021-01-01 12:00:00',
        TIMESTAMP '2021-01-01 14:00:00',
        2.5,
        100,
        100
    ),
    (
        'paris-london',
        'AF124',
        'paris-charles-de-gaulle',
        'london-heathrow',
        'air-france',
        TIMESTAMP '2021-01-01 12:00:00',
        TIMESTAMP '2021-01-01 14:00:00',
        2,
        150,
        50
    ),
    (
        'paris-new-york',
        'AF125',
        'paris-charles-de-gaulle',
        'new-york-jfk',
        'air-france',
        TIMESTAMP '2021-01-01 12:00:00',
        TIMESTAMP '2021-01-01 14:00:00',
        8,
        500,
        200
    );

INSERT INTO
    hotel (
        id,
        name,
        address,
        city_id,
        phone_number,
        email,
        website,
        rating,
        description
    )
VALUES (
        'hotel-paris',
        'Hotel Paris',
        '1 Rue de Rivoli, 75001 Paris',
        'paris',
        '01 23 45 67 89',
        'acceuil@hotel-paris.fr',
        'https://www.hotel-paris.fr',
        5,
        'Hotel Paris is a 5-star hotel located in the heart of Paris, near the Louvre Museum.'
    ),
    (
        'hotel-berlin',
        'Hotel Berlin',
        '1 Unter den Linden, 10117 Berlin',
        'berlin',
        '01 23 45 67 89',
        'acceuil@hotel-berlin.fr',
        'https://www.hotel-berlin.fr',
        5,
        'Hotel Berlin is a 5-star hotel located in the heart of Berlin, near the Brandenburg Gate.'
    ),
    (
        'hotel-london',
        'Hotel London',
        '1 Buckingham Palace Road, London SW1W 0SJ',
        'london',
        '01 23 45 67 89',
        'acceuil@hotel-londres.fr',
        'https://www.hotel-londres.fr',
        5,
        'Hotel London is a 5-star hotel located in the heart of London, near Buckingham Palace.'
    );

INSERT INTO
    room (
        id,
        hotel_id,
        room_number,
        name,
        price,
        capacity,
        available
    )
VALUES (
        'room-hotel-paris-1',
        'hotel-paris',
        '101',
        'Standard Room',
        100,
        2,
        1
    ),
    (
        'room-hotel-paris-2',
        'hotel-paris',
        '102',
        'Deluxe Room',
        150,
        2,
        1
    ),
    (
        'room-hotel-berlin-1',
        'hotel-berlin',
        '201',
        'Standard Room',
        100,
        2,
        1
    ),
    (
        'room-hotel-berlin-2',
        'hotel-berlin',
        '202',
        'Deluxe Room',
        150,
        2,
        0
    ),
    (
        'room-hotel-london-1',
        'hotel-london',
        '301',
        'Standard Room',
        100,
        2,
        0
    ),
    (
        'room-hotel-london-2',
        'hotel-london',
        '302',
        'Deluxe Room',
        150,
        2,
        0
    );

INSERT INTO
    car (
        id,
        brand,
        plate,
        motor,
        color,
        price,
        available
    )
VALUES (
        'car-1',
        'Ford',
        'AB-123-CD',
        '1.6',
        'black',
        50,
        true
    ),
    (
        'car-2',
        'Peugeot',
        'EF-456-GH',
        '1.2',
        'red',
        40,
        true
    ),
    (
        'car-3',
        'Citroën',
        'IJ-789-KL',
        '1.4',
        'green',
        45,
        false
    );