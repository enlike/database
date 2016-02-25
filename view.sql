/* отсортированный список пациентов */
CREATE VIEW ordered_patients_list AS
SELECT surname,first_name,last_name
FROM patients
ORDER BY (surname,first_name,last_name);

/* отсортированный список докторов */
CREATE VIEW ordered_doctors_list AS
SELECT surname,first_name,last_name
FROM doctors
ORDER BY (surname,first_name,last_name);

/* режиссер и колличество снятых им фильмов получивших награду */
CREATE VIEW has_operation AS
SELECT *
FROM patient 
where  has_ill = 'yes';

// выбрать ФИО врача, который принимал 31.12.15
CREATE VIEW new_year_receipt
SELECT surname, first_name, last_name, receipt_date
FROM doctors as d
        INNER JOIN
        (select id_reception,receipt_date
        from reception 
        where receipt_date = '2016-01-04')
        as r
          ON d.id_doctor=r.id_reception