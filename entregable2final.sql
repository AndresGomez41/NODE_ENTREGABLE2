CREATE TABLE "User" (
  "id" SERIAL PRIMARY KEY,
  "user" varchar UNIQUE,
  "email" varchar UNIQUE,
  "password" varchar,
  "age" int
);

CREATE TABLE "entradas" (
  "id" SERIAL PRIMARY KEY,
  "title" varchar UNIQUE,
  "description" varchar,
  "author" varchar,
  "content" varchar
);

CREATE TABLE "category_entrada" (
  "id" SERIAL PRIMARY KEY,
  "category" int,
  "entrada" int
);

CREATE TABLE "category" (
  "id" SERIAL PRIMARY KEY,
  "category" varchar
);

CREATE TABLE "comment" (
  "id" SERIAL PRIMARY KEY,
  "entry_id" int,
  "comment" varchar,
  "user_id" int
);

ALTER TABLE "category_entrada" ADD FOREIGN KEY ("category") REFERENCES "category" ("id");

ALTER TABLE "category_entrada" ADD FOREIGN KEY ("entrada") REFERENCES "entradas" ("id");

ALTER TABLE "comment" ADD FOREIGN KEY ("entry_id") REFERENCES "entradas" ("id");

ALTER TABLE "comment" ADD FOREIGN KEY ("user_id") REFERENCES "User" ("id");

insert into "User" ("user", email, "password","age") values
('Juan', 'juan@gmail.com', '1234','52'),
('Flor', 'flor@gmail.com', '1234','42'),
('Daniela', 'Daniela@gmail.com', '1234','32'),
('David', 'David@gmail.com', '1234','22');


insert into "entradas" (title , description , author , "content") values
('Volar avion', 'como volar un boing 777', 'Julio Perales','lorem10'),
('montar bici', 'como aprender a andar en bici', 'Laura','lorem12'),
('arreglar pc', 'guia para arreglar pc', 'Ernesto ','lorem23'),
('cultivar papa', 'como cultivar papa', 'Ramiro','lorem500');


insert into category (category) values
('guia'),
('agricultura'),
('transporte'),
('tecnologia'),
('reparacion'),
('tutorial');

insert into category_entrada (entrada, category) values
('1','1'),
('1','3'),
('1','6'),
('2','1'),
('2','3'),
('2','6');

insert into "comment"  (entry_id, "comment", user_id) values
('1','bueno','1'),
('1','malo','2'),
('1','regular','3'),
('1','bueno','4'),
('2','bueno','1'),
('2','malo','2'),
('2','regular','3'),
('2','bueno','4');

select * from "User";
select * from "comment";
select * from "entradas";
select * from category_entrada;
select * from category;

