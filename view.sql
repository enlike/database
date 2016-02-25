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

/* у которого была операция */
CREATE VIEW has_operation AS
SELECT *
FROM reception 
where  has_ill = 'yes';

/* выбрать ФИО врача, который принимал 31.12.15*/
CREATE VIEW new_year_receipt
SELECT surname, first_name, last_name, receipt_date
FROM doctors as d
        INNER JOIN
        (select id_reception,receipt_date
        from reception 
        where receipt_date = '2016-01-04')
        as r
          ON d.id_doctor=r.id_reception


/* 11. тут не рецепты, а приемы у врача.  Я написал у какого пациента был прием в пятницу. */
CREATE VIEW patient_friday
SELECT surname,first_name, last_name, weekday
FROM patients as p
             right JOIN
             (select id_reception, receipt_date,weekday
             from reception
             where weekday='пт'
             )
                 as r
                 ON p.id_patient=r.id_reception