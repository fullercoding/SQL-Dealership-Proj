DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INTEGER,
    email VARCHAR(50),
    phone_number VARCHAR,
    eligible_for_funding VARCHAR(50)
);

INSERT INTO customer(
    first_name,
    last_name,
    age,
    email,
    phone_number,
    eligible_for_funding
) VALUES(
    'connor',
    'fuller',
    27,
    'cf@gmail.com',
    '8887776666',
    'yes'
);

SELECT *from customer

INSERT INTO customer(
    first_name,
    last_name,
    age,
    email,
    phone_number,
    eligible_for_funding
) VALUES(
    'john',
    'bob',
    84,
    'johnbob@gmail.com',
    '7776669999',
    'yes'
);

INSERT INTO customer(
    first_name,
    last_name,
    age,
    email,
    phone_number,
    eligible_for_funding
) VALUES(
    'sue',
    'bird',
    55,
    'suebird@basketball.com',
    '1234445555',
    'yes'
);

INSERT INTO customer(
    first_name,
    last_name,
    age,
    email,
    phone_number,
    eligible_for_funding
) VALUES(
    'randy',
    'moss',
    52,
    'mossedson@gmail.com',
    '2123134545',
    'yes'
);

INSERT INTO customer(
    first_name,
    last_name,
    age,
    email,
    phone_number,
    eligible_for_funding
) VALUES(
    'barry',
    'bonds',
    58,
    'asterikHRking@gmail.com',
    '7627627622',
    'yes'
);
-----------------------------------------------------------------------------
-----------------------------------------------------------------------------
DROP TABLE IF EXISTS cars CASCADE;
CREATE TABLE cars(
    car_id SERIAL PRIMARY KEY,
    model VARCHAR,
    make VARCHAR,
    year INTEGER,
    types VARCHAR,
    price DECIMAL,
    vin INTEGER
);
SELECT *
from cars

INSERT INTO cars(
    model,
    make,
    year,
    types,
    price,
    vin
)
VALUES(
    'honda',
    'accord',
    1994,
    'sedan',
    24000.00,
    001
);


INSERT INTO cars(
    model,
    make,
    year,
    types,
    price,
    vin
)
VALUES(
    'cadillac',
    'cts',
    2007,
    'sedan',
    40000.00,
    002
);

INSERT INTO cars(
    model,
    make,
    year,
    types,
    price,
    vin
)
VALUES(
    'audi',
    'rs7',
    2023,
    'sedan',
    110000.00,
    003
);

INSERT INTO cars(
    model,
    make,
    year,
    types,
    price,
    vin
)
VALUES(
    'rivian',
    'r1s',
    2022,
    'e-suv',
    70000.00,
    004
);

INSERT INTO cars(
    model,
    make,
    year,
    types,
    price,
    vin
)
VALUES(
    'cadillac',
    'lyriq',
    2023,
    'e-suv',
    60000.00,
    005
);
-----------------------------------------------------------------------------
-----------------------------------------------------------------------------

DROP TABLE IF EXISTS sales_staff;
CREATE TABLE sales_staff(
    sales_staff_id SERIAL PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR,
    email VARCHAR,
    phone_number VARCHAR,
    age INTEGER
);

INSERT INTO sales_staff(
    first_name,
    last_name,
    email,
    phone_number,
    age
)VALUES(
    'ian',
    'garry',
    'iangarry@sales.com',
    '0001112222',
    24
);
INSERT INTO sales_staff(
    first_name,
    last_name,
    email,
    phone_number,
    age
)VALUES(
    'francis',
    'ngannou',
    'fn@sales.com',
    '3211234567',
    36
);
INSERT INTO sales_staff(
    first_name,
    last_name,
    email,
    phone_number,
    age
)VALUES(
    'naoya',
    'inoue',
    'inoue@sales.com',
    '9877897654',
    29
);
INSERT INTO sales_staff(
    first_name,
    last_name,
    email,
    phone_number,
    age
)VALUES(
    'brandon',
    'moreno',
    'moreno@sales.com',
    '7655677890',
    28
);
INSERT INTO sales_staff(
    first_name,
    last_name,
    email,
    phone_number,
    age
)VALUES(
    'kai',
    'kara-france',
    'krance@sales.com',
    '4321235677',
    29
);
--------------------------------------------------------------------------
--------------------------------------------------------------------------
DROP TABLE IF EXISTS service_staff;
CREATE TABLE service_staff(
    service_staff_id SERIAL PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR,
    email VARCHAR,
    phone_number VARCHAR,
    age INTEGER
);

INSERT INTO service_staff(
    first_name,
    last_name,
    email,
    phone_number,
    age
)VALUES(
    'cory',
    'sandhagen',
    'sandman@service.com',
    '5677658901',
    30
);
INSERT INTO service_staff(
    first_name,
    last_name,
    email,
    phone_number,
    age
)VALUES(
    'song',
    'yadong',
    'yadong@service.com',
    '9123118012',
    24
);
INSERT INTO service_staff(
    first_name,
    last_name,
    email,
    phone_number,
    age
)VALUES(
    'chito',
    'vera',
    'vera@service.com',
    '7424277444',
    29
);
INSERT INTO service_staff(
    first_name,
    last_name,
    email,
    phone_number,
    age
)VALUES(
    'sean',
    'omalley',
    'omalley@service.com',
    '8889990000',
    27
);
INSERT INTO service_staff(
    first_name,
    last_name,
    email,
    phone_number,
    age
)VALUES(
    'izzy',
    'adesanya',
    'adesanya@service.com',
    '7774441111',
    33
);
---------------------------------------------------------------------------
---------------------------------------------------------------------------
DROP TABLE IF EXISTS invoice;
CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    sales_staff_id INTEGER,
    car_id INTEGER,
    vin INTEGER,
    price DECIMAL,
    tax INTEGER,
    total_price DECIMAL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (sales_staff_id) REFERENCES sales_staff(sales_staff_id),
    FOREIGN KEY (car_id) REFERENCES cars(car_id)
);

select *
from customer

select *
from sales_staff

select *
from cars

select *
from invoice

INSERT INTO invoice(
    customer_id,
    sales_staff_id,
    car_id,
    vin,
    price,
    tax,
    total_price
)VALUES(
    1,
    1,
    1,
    001,
    24000.00,
    2400,
    26400.00
);
INSERT INTO invoice(
    customer_id,
    sales_staff_id,
    car_id,
    vin,
    price,
    tax,
    total_price
)VALUES(
    2,
    2,
    2,
    002,
    40000.00,
    4000,
    44000.00
);
INSERT INTO invoice(
    customer_id,
    sales_staff_id,
    car_id,
    vin,
    price,
    tax,
    total_price
)VALUES(
    3,
    3,
    3,
    003,
    110000.00,
    10000,
    120000.00
);
INSERT INTO invoice(
    customer_id,
    sales_staff_id,
    car_id,
    vin,
    price,
    tax,
    total_price
)VALUES(
    4,
    4,
    4,
    004,
    70000.00,
    7000,
    77000.00
);
INSERT INTO invoice(
    customer_id,
    sales_staff_id,
    car_id,
    vin,
    price,
    tax,
    total_price
)VALUES(
    5,
    5,
    5,
    005,
    60000.00,
    6000,
    66000.00
);
select *
from invoice
---------------------------------------------------------------------------
---------------------------------------------------------------------------

DROP TABLE IF EXISTS service_ticket;
CREATE TABLE service_ticket(
    service_ticket_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    service_staff_id INTEGER,
    car_id INTEGER,
    vin INTEGER,
    price DECIMAL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (service_staff_id) REFERENCES service_staff(service_staff_id),
    FOREIGN KEY (car_id) REFERENCES cars(car_id)
);
INSERT INTO service_ticket(
    customer_id,
    service_staff_id,
    car_id,
    vin,
    price
)VALUES(
    1,
    1,
    1,
    001,
    400.00
);
INSERT INTO service_ticket(
    customer_id,
    service_staff_id,
    car_id,
    vin,
    price
)VALUES(
    2,
    2,
    2,
    002,
    250.00
);
INSERT INTO service_ticket(
    customer_id,
    service_staff_id,
    car_id,
    vin,
    price
)VALUES(
    3,
    3,
    3,
    003,
    750.99
);
INSERT INTO service_ticket(
    customer_id,
    service_staff_id,
    car_id,
    vin,
    price
)VALUES(
    4,
    4,
    4,
    004,
    125.59
);
INSERT INTO service_ticket(
    customer_id,
    service_staff_id,
    car_id,
    vin,
    price
)VALUES(
    5,
    5,
    5,
    005,
    999.99
);

select *
from service_ticket