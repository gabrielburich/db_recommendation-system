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
    order_time_weight    decimal default 0.4 not null,
    order_time_tolerance integer default 15  not null,
    distance_weight      decimal default 0.9 not null,
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
    value decimal
);

alter table tp_restaurant_similarity owner to postgres;
-- End tp_restaurant_similarity Table definition

-- Start tp_order Table definition
create table tp_order
(
    id   serial  not null constraint tp_order_pk primary key,
    name varchar not null
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

-- Start meal Table definition
create table meal
(
	id serial not null,
	name varchar,
	description text,
	price decimal,
	restaurant_id int not null
		constraint meal_restaurant_id_fk
			references restaurant
);

create unique index meal_id_uindex
	on meal (id);

alter table meal
	add constraint meal_pk
		primary key (id);

-- End meal Table definition

-- Start order Table definition
create table "order"
(
	id serial not null,
	user_id int
		constraint order_user_id_fk
			references "user",
	restaurant_id int
		constraint order_restaurant_id_fk
			references restaurant,
	meal_id int
		constraint order_meal_id_fk
			references meal
);

create unique index order_id_uindex
	on "order" (id);

alter table "order"
	add constraint order_pk
		primary key (id);
-- End order Table definition

