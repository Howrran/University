use Library;

--select * into Book1 from Book
--where publication_date > '2018.01.01' 

--select * into Book2 from Book
--where publication_date < '2018.01.01'

-- select * from Book1 UNION select * from Book2 -- об'Їднанн€

--select * from Book1 where publisher_id in ( select publisher_id from Book2) -- перетин

--select * from Book1 where publisher_id not in ( select publisher_id from Book2) -- р≥зниц€

-- select * from Book1,Book2 -- декартовий добуток