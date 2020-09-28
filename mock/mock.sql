-- Create admin user
INSERT INTO "user" (name, email, password) VALUES ('admin', 'admin@gmail.com', '$2b$10$U.o0H08Gj9.cpWXxwKu76evK.HB3NDMuhOUoXNgu8kCenIGkazVMO');

select * from "user";
-- User preference
SELECT * from user_preference;

-- Create restaurant types
INSERT INTO tp_restaurant (name) values ('Fast food');
INSERT INTO tp_restaurant (name) values ('Chinesa');
INSERT INTO tp_restaurant (name) values ('Japonesa');
INSERT INTO tp_restaurant (name) values ('Tailandesa');
INSERT INTO tp_restaurant (name) values ('Árabe');
INSERT INTO tp_restaurant (name) values ('Francesa');
INSERT INTO tp_restaurant (name) values ('Mexicana');
INSERT INTO tp_restaurant (name) values ('Índia');
INSERT INTO tp_restaurant (name) values ('Portuguesa');
INSERT INTO tp_restaurant (name) values ('Brasileira');
INSERT INTO tp_restaurant (name) values ('italiana');

-- Create restaurant type similarity
-- Fast Food
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (1, 1, 1); -- Fast Food
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (1, 2, 0.3); -- Chinesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (1, 3, 0.1); -- Japonesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (1, 4, 0.6); -- Tailandesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (1, 5, 0.4); -- Árabe
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (1, 6, 0.8); -- Francesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (1, 7, 0.3); -- Mexicana
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (1, 8, 0.3); -- Índia
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (1, 9, 0.2); -- Portuguesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (1, 10, 0.6); --  Brasileira
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (1, 11, 0.6); -- italiana

-- Chinesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (2, 1, 0.3); -- Fast Food
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (2, 2, 1); -- Chinesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (2, 3, 0.8); -- Japonesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (2, 4, 0.7); -- Tailandesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (2, 5, 0.5); -- Árabe
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (2, 6, 0.3); -- Francesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (2, 7, 0.2); -- Mexicana
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (2, 8, 0.4); -- Índia
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (2, 9, 0.1); -- Portuguesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (2, 10, 0.1); --  Brasileira
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (2, 11, 0.1); -- italiana

-- Japonesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (3, 1,  0.1); -- Fast Food
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (3, 2,  0.8); -- Chinesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (3, 3,  1); -- Japonesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (3, 4,  0.8); -- Tailandesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (3, 5,  0.6); -- Árabe
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (3, 6,  0.3); -- Francesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (3, 7,  0.2); -- Mexicana
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (3, 8,  0.5); -- Índia
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (3, 9,  0.1); -- Portuguesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (3, 10, 0.1); --  Brasileira
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (3, 11, 0.3); -- italiana

-- Tailandesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (4, 1,  0.2); -- Fast Food
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (4, 2,  0.7); -- Chinesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (4, 3,  0.8); -- Japonesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (4, 4,  1); -- Tailandesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (4, 5,  0.7); -- Árabe
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (4, 6,  0.4); -- Francesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (4, 7,  0.2); -- Mexicana
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (4, 8,  0.8); -- Índia
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (4, 9,  0.1); -- Portuguesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (4, 10, 0.2); --  Brasileira
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (4, 11, 0.2); -- italiana

-- Árabe
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (5, 1,  0.6); -- Fast Food
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (5, 2,  0.5); -- Chinesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (5, 3,  0.6); -- Japonesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (5, 4,  0.7); -- Tailandesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (5, 5,  1  ); -- Árabe
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (5, 6,  0.6); -- Francesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (5, 7,  0.3); -- Mexicana
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (5, 8,  0.8); -- Índia
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (5, 9,  0.1); -- Portuguesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (5, 10, 0.3); --  Brasileira
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (5, 11, 0.2); -- italiana

-- Francesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (6, 1,  0.4); -- Fast Food
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (6, 2,  0.3); -- Chinesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (6, 3,  0.3); -- Japonesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (6, 4,  0.4); -- Tailandesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (6, 5,  0.6); -- Árabe
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (6, 6,  1); -- Francesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (6, 7,  0.6); -- Mexicana
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (6, 8,  0.2); -- Índia
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (6, 9,  0.3); -- Portuguesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (6, 10, 0.4); --  Brasileira
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (6, 11, 0.6); -- italiana

-- Mexicana
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (7, 1,  0.8); -- Fast Food
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (7, 2,  0.2); -- Chinesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (7, 3,  0.2); -- Japonesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (7, 4,  0.2); -- Tailandesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (7, 5,  0.3); -- Árabe
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (7, 6,  0.6); -- Francesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (7, 7,  1); -- Mexicana
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (7, 8,  0.4); -- Índia
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (7, 9,  0.3); -- Portuguesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (7, 10, 0.6); --  Brasileira
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (7, 11, 0.3); -- italiana

-- Índia
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (8, 1,  0.3); -- Fast Food
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (8, 2,  0.4); -- Chinesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (8, 3,  0.5); -- Japonesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (8, 4,  0.8); -- Tailandesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (8, 5,  0.8); -- Árabe
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (8, 6,  0.2); -- Francesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (8, 7,  0.4); -- Mexicana
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (8, 8,  1); -- Índia
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (8, 9,  0.1); -- Portuguesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (8, 10, 0.2); --  Brasileira
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (8, 11, 0.2); -- italiana8

-- Portuguesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (9, 1,  0.2); -- Fast Food
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (9, 2,  0.1); -- Chinesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (9, 3,  0.1); -- Japonesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (9, 4,  0.1); -- Tailandesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (9, 5,  0.1); -- Árabe
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (9, 6,  0.3); -- Francesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (9, 7,  0.3); -- Mexicana
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (9, 8,  0.1); -- Índia
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (9, 9,  1); -- Portuguesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (9, 10, 0.7); --  Brasileira
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (9, 11, 0.5); -- italiana

--  Brasileira
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (10, 1,  0.6); -- Fast Food
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (10, 2,  0.1); -- Chinesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (10, 3,  0.1); -- Japonesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (10, 4,  0.2); -- Tailandesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (10, 5,  0.3); -- Árabe
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (10, 6,  0.4); -- Francesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (10, 7,  0.6); -- Mexicana
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (10, 8,  0.2); -- Índia
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (10, 9,  0.7); -- Portuguesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (10, 10, 1); --  Brasileira
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (10, 11, 0.7); -- italiana

-- Italiana
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (11, 1,  0.6); -- Fast Food
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (11, 2,  0.1); -- Chinesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (11, 3,  0.3); -- Japonesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (11, 4,  0.2); -- Tailandesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (11, 5,  0.2); -- Árabe
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (11, 6,  0.6); -- Francesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (11, 7,  0.3); -- Mexicana
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (11, 8,  0.2); -- Índia
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (11, 9,  0.5); -- Portuguesa
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (11, 10, 0.7); --  Brasileira
INSERT INTO tp_restaurant_similarity (a_id, b_id, value) values (11, 11, 1); -- italiana

-- create restaurants
insert into restaurant (name, tp_restaurant_id) values ('China In Bucket', 2);
insert into restaurant (name, tp_restaurant_id) values ('Mac Ronaldo', 1);
insert into restaurant (name, tp_restaurant_id) values ('IndianTech Food', 8);
insert into restaurant (name, tp_restaurant_id) values ('TaiFood', 4);
insert into restaurant (name, tp_restaurant_id) values ('MYoshi', 3);
insert into restaurant (name, tp_restaurant_id) values ('Burguer Queen', 1);
insert into restaurant (name, tp_restaurant_id) values ('SayonaShoyo', 3);
insert into restaurant (name, tp_restaurant_id) values ('Bobzeras', 1);
insert into restaurant (name, tp_restaurant_id) values ('Soft Country Café', 1);
insert into restaurant (name, tp_restaurant_id) values ('China Food', 2);
insert into restaurant (name, tp_restaurant_id) values ('Comida de Belem', 9);
insert into restaurant (name, tp_restaurant_id) values ('Burguer Cool', 1);
insert into restaurant (name, tp_restaurant_id) values ('Pizzaria pizza certa', 11);
insert into restaurant (name, tp_restaurant_id) values ('GuacaDuro', 7);
insert into restaurant (name, tp_restaurant_id) values ('Gandhi', 8);
insert into restaurant (name, tp_restaurant_id) values ('RestoDonte', 6);
insert into restaurant (name, tp_restaurant_id) values ('Restaurante Legal', 10);
insert into restaurant (name, tp_restaurant_id) values ('Lanchonete da rua', 1);
insert into restaurant (name, tp_restaurant_id) values ('TacoTuesday', 7);
insert into restaurant (name, tp_restaurant_id) values ('Churrasquinho de Gato', 10);
insert into restaurant (name, tp_restaurant_id) values ('TaNaChina Joao', 2);
insert into restaurant (name, tp_restaurant_id) values ('Homus Sapiens', 5);
insert into restaurant (name, tp_restaurant_id) values ('SurraxcoDaLaje', 10);
insert into restaurant (name, tp_restaurant_id) values ('Sobororeaux', 6);
insert into restaurant (name, tp_restaurant_id) values ('Restaurante BonApetit', 6);

select * from restaurant;

-- create tp_order
insert into tp_order (name) values ('restaurant');
insert into tp_order (name) values ('delivery');
insert into tp_order (name) values ('pickup');

select * from tp_order;

-- create last cases
insert into last_cases (accepts_meal_voucher, tp_restaurant_id, order_time, distance, tp_order_id, sit_place, restaurant_id) VALUES (FALSE,2,20,2,1,FALSE,1);
insert into last_cases (accepts_meal_voucher, tp_restaurant_id, order_time, distance, tp_order_id, sit_place, restaurant_id) VALUES (TRUE,1,30,4,2,TRUE,2);
insert into last_cases (accepts_meal_voucher, tp_restaurant_id, order_time, distance, tp_order_id, sit_place, restaurant_id) VALUES (TRUE,8,45,5,1,FALSE,3);
insert into last_cases (accepts_meal_voucher, tp_restaurant_id, order_time, distance, tp_order_id, sit_place, restaurant_id) VALUES (FALSE,4,20,25,1,FALSE,4);
insert into last_cases (accepts_meal_voucher, tp_restaurant_id, order_time, distance, tp_order_id, sit_place, restaurant_id) VALUES (TRUE,3,45,1,2,TRUE,5);
insert into last_cases (accepts_meal_voucher, tp_restaurant_id, order_time, distance, tp_order_id, sit_place, restaurant_id) VALUES (TRUE,1,30,5,3,FALSE,6);
insert into last_cases (accepts_meal_voucher, tp_restaurant_id, order_time, distance, tp_order_id, sit_place, restaurant_id) VALUES (TRUE,3,25,12,1,TRUE,7);
insert into last_cases (accepts_meal_voucher, tp_restaurant_id, order_time, distance, tp_order_id, sit_place, restaurant_id) VALUES (TRUE,1,15,2.5,3,TRUE,8);
insert into last_cases (accepts_meal_voucher, tp_restaurant_id, order_time, distance, tp_order_id, sit_place, restaurant_id) VALUES (TRUE,1,30,10,3,TRUE,9);
insert into last_cases (accepts_meal_voucher, tp_restaurant_id, order_time, distance, tp_order_id, sit_place, restaurant_id) VALUES (TRUE,2,35,15,1,FALSE,10);
insert into last_cases (accepts_meal_voucher, tp_restaurant_id, order_time, distance, tp_order_id, sit_place, restaurant_id) VALUES (FALSE,9,15,12,1,FALSE,11);
insert into last_cases (accepts_meal_voucher, tp_restaurant_id, order_time, distance, tp_order_id, sit_place, restaurant_id) VALUES (FALSE,1,15,12,2,FALSE,12);
insert into last_cases (accepts_meal_voucher, tp_restaurant_id, order_time, distance, tp_order_id, sit_place, restaurant_id) VALUES (FALSE,11,120,6,1,FALSE,13);
insert into last_cases (accepts_meal_voucher, tp_restaurant_id, order_time, distance, tp_order_id, sit_place, restaurant_id) VALUES (FALSE,7,45,20,1,TRUE,14);
insert into last_cases (accepts_meal_voucher, tp_restaurant_id, order_time, distance, tp_order_id, sit_place, restaurant_id) VALUES (TRUE,8,10,4,3,FALSE,15);
insert into last_cases (accepts_meal_voucher, tp_restaurant_id, order_time, distance, tp_order_id, sit_place, restaurant_id) VALUES (FALSE,6,25,40,1,TRUE,16);
insert into last_cases (accepts_meal_voucher, tp_restaurant_id, order_time, distance, tp_order_id, sit_place, restaurant_id) VALUES (TRUE,10,10,15,1,TRUE,17);
insert into last_cases (accepts_meal_voucher, tp_restaurant_id, order_time, distance, tp_order_id, sit_place, restaurant_id) VALUES (TRUE,1,30,10,3,FALSE,18);
insert into last_cases (accepts_meal_voucher, tp_restaurant_id, order_time, distance, tp_order_id, sit_place, restaurant_id) VALUES (TRUE,7,15,4.5,2,TRUE,19);
insert into last_cases (accepts_meal_voucher, tp_restaurant_id, order_time, distance, tp_order_id, sit_place, restaurant_id) VALUES (FALSE,10,10,3.5,1,FALSE,20);
insert into last_cases (accepts_meal_voucher, tp_restaurant_id, order_time, distance, tp_order_id, sit_place, restaurant_id) VALUES (TRUE,2,15,22,1,TRUE,21);
insert into last_cases (accepts_meal_voucher, tp_restaurant_id, order_time, distance, tp_order_id, sit_place, restaurant_id) VALUES (FALSE,5,25,2,3,TRUE,22);
insert into last_cases (accepts_meal_voucher, tp_restaurant_id, order_time, distance, tp_order_id, sit_place, restaurant_id) VALUES (TRUE,10,20,5,1,TRUE,23);
insert into last_cases (accepts_meal_voucher, tp_restaurant_id, order_time, distance, tp_order_id, sit_place, restaurant_id) VALUES (FALSE,6,40,25,2,TRUE,24);
insert into last_cases (accepts_meal_voucher, tp_restaurant_id, order_time, distance, tp_order_id, sit_place, restaurant_id) VALUES (TRUE,6,25,8,1,TRUE,25);

select * from last_cases;