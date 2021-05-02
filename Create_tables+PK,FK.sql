create table studentas(
lsp_id int,
fak_id int,
name varchar (255),
surname varchar (255),
primary key (lsp_id));

create table fakultetas(
fak_id int,
name varchar (255),
address varchar (255),
primary key (fak_id)
);

alter table studentas 
add foreign key (fak_id) references fakultetas (fak_id);


create table biblioteka(
bibl_id int,
fak_id int,
name varchar (255),
primary key (bibl_id));

alter table biblioteka 
add foreign key (fak_id) references fakultetas (fak_id);


create table knygos(
book_id int,
bibl_id int,
name varchar (255),
author varchar (255),
primary key (book_id),
foreign key (bibl_id) references biblioteka (bibl_id));


create table studento_paimtos_knygos(
spk_id int,
lsp_id int,
book_id int,
create_date date,
update_date date,
primary key (spk_id));

alter table studento_paimtos_knygos
add foreign key (lsp_id) references studentas(lsp_id);

alter table studento_paimtos_knygos
add foreign key (book_id) references knygos(book_id);

