SELECT *
FROM client;

INSERT INTO client(
    order_num,
    first_name,
    last_name,
    email_address,
    member_id
)
VALUES(
    '1234',
    'Andy',
    'Piet',
    'andy.p@codingtemple.com',
    '999999'
);

INSERT INTO concession(
    member_id,
    quantity,
    product_type,
    product_id
)
VALUES(
    '999999',
    '10',
    'popcorn',
    '987654321'
);

INSERT INTO product(
    product_id,
    quantity,
    product_type  
)
VALUES(
    '987654321',
    '10',
    'popcorn'
);

INSERT INTO booking(
    order_num,
    ticket_num,
    date_time
)
VALUES(
    '1234',
    '1111',
    '2022-11-23'
);

INSERT INTO ticket(
    show_time,
    movie_name,
    theater_num,
    seat_num,
    ticket_num,
    show_id
)
VALUES(
    '2022-11-23',
    'Whatever',
    '01',
    '14',
    '1111',
    '156'
);

INSERT INTO movie(
    show_id,
    movie_name,
    start_time
)
VALUES(
    '156',
    'Whatever',
    '2022-11-23'
);