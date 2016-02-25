/*выбрать людей, которые не болеют, и сортировать их по ФИО */
SELECT priem_doctor_id, has_ill, surname
FROM reception,patients
 where has_ill='0'
 ORDER BY surname, first_name, last_name
;

/*выбрать максимальное количество дней болезни */
SELECT MAX(treatment_dates)
from reception
  
/*выбрать всю информацию о пациенте и приеме у врача, Сортировать по ФИО */
SELECT *
FROM patients as p  LEFT JOIN reception as r
ON p.id_patient  = r.id_reception
ORDER BY surname, first_name,last_name


/*выбрать id доктора, который принимает во вторник */
SELECT id_doctor,surname, first_name, weekday
FROM (select *
      from reception
      where priem_doctor_id='1' AND weekday ='вт') as r  LEFT JOIN doctors as d
ON r.id_reception  = d.id_doctor

