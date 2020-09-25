-- Start user Table definition
create table "user"
(
    id       serial  not null constraint user_pk primary key,
    name     varchar not null,
    email    varchar not null,
    password varchar not null
);

comment on table "user" is 'User Table';

alter table "user" owner to postgres;

create unique index user_email_uindex on "user" (email);

create unique index user_id_uindex on "user" (id);
-- End User Table definition

-- Start tp_restaurant Table definition
create table tp_restaurant
(
    id   serial not null constraint tp_restaurant_pk primary key,
    name varchar
);

alter table tp_restaurant owner to postgres;

create unique index tp_restaurant_id_uindex on tp_restaurant (id);
-- End tp_restaurant Table definition

-- Start user_preference Table definition
create table user_preference
(
    user_id              integer             not null,
    order_time_weight    integer default 0.4 not null,
    order_time_tolerance integer default 15  not null,
    distance_weight      integer default 0.9 not null,
    distance_tolerance   integer default 5   not null
);

alter table user_preference owner to postgres;
-- End user_preference Table definition

-- Start restaurant Table definition
create table restaurant
(
    id               serial  not null constraint restaurant_pk primary key,
    name             varchar not null,
    tp_restaurant_id integer
);

alter table restaurant owner to postgres;

create unique index restaurant_id_uindex on restaurant (id);
-- End restaurant Table definition

-- Start tp_restaurant_similarity Table definition
create table tp_restaurant_similarity
(
    a_id  integer not null,
    b_id  integer not null,
    value integer
);

alter table tp_restaurant_similarity owner to postgres;
-- End tp_restaurant_similarity Table definition

-- Start tp_order Table definition
create table tp_order
(
    id   serial  not null constraint tp_order_pk primary key,
    name integer not null
);

alter table tp_order owner to postgres;

create unique index tp_order_id_uindex on tp_order (id);
-- End tp_order Table definition

-- Start last_cases Table definition
create table last_cases
(
    accepts_meal_voucher boolean,
    tp_restaurant_id     integer,
    order_time           integer,
    distance             integer,
    tp_order_id          integer,
    sit_place            boolean,
    restaurant_id        integer
);

alter table last_cases owner to postgres;
-- End last_cases Table definition

