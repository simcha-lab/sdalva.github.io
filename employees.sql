--CREATE TABLE users(
    id serial primary key,
    first_name varchar(50),
    last_name varchar(50),
    born_at date,
    admin boolean,
    email varchar(50) not null,
    created_at date,
    updated_at date  
)
