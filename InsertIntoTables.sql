INSERT INTO fakultetas (fak_id , name, address)
  VALUES (340,'statybu','studentu 159');
  
INSERT INTO studentas (lsp_id, fak_id, name, surname)
 values (756903, 341, 'Petras', 'Jonaitis');
 
insert into biblioteka (bibl_id, fak_id, name)
values (7635, 340, 'Statybininku_bibl');

insert into knygos (book_id, bibl_id, name, author)
values (72694083, 7635, 'QA management', 'Steven Lior');

insert into studento_paimtos_knygos (spk_id, lsp_id, book_id, create_date)
values (989998, 756903, 72694083, '2021-04-20');
