select *
FROM client;

CREATE TABLE concession(
    member_id SERIAL PRIMARY KEY,
    quantity INTEGER,
    product_type VARCHAR(25),
    product_id INTEGER,
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);
CREATE TABLE client(
    order_num SERIAL PRIMARY KEY,
    first_name VARCHAR(25),
    last_name VARCHAR(25),
    email_address VARCHAR(25),
    member_id SERIAL,
    FOREIGN KEY (member_id) REFERENCES concession(member_id)
);


CREATE TABLE product(
    product_id SERIAL PRIMARY KEY,
    quantity INTEGER,
    product_type VARCHAR(25)
);

CREATE TABLE booking(
    ticket_num SERIAL PRIMARY KEY,
    date_time TIMESTAMP,
    order_num INTEGER,
    FOREIGN KEY (order_num) REFERENCES client(order_num)
);

CREATE TABLE ticket(
    show_id SERIAL PRIMARY KEY,
    show_time TIMESTAMP,
    movie_name VARCHAR(25),
    theater_num INTEGER,
    seat_num INTEGER,
    ticket_num INTEGER,
    FOREIGN KEY (ticket_num) REFERENCES booking(ticket_num)
);

CREATE TABLE movie(
    show_id INTEGER,
    movie_name VARCHAR(25),
    start_time TIMESTAMP,
    FOREIGN KEY (show_id) REFERENCES ticket(show_id)
);