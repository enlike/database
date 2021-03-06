INSERT INTO doctors (id_doctor,first_name, surname, last_name, birthday,work_experience, medical_profession) VALUES
  (1,'Эльдар', 'Рязанов', 'Александрович ', '1957-11-18','30', 'Херург'),
  (2,'Леонид ', 'Павлов', 'Иович ', '1983-01-30','3','Терапевт'),
  (3,'Андрей ', 'Серебров', 'Арсеньевич ', '1982-04-04','7', 'Стоматолог'),
  (4,'Светлана ', 'Дружинина', 'Сергеевна ', '1965-12-16','24', 'Онколог');

INSERT INTO patients (id_patient,first_name, surname, last_name, gender,birthday,district, phone) VALUES
  (01,'Дмитрий', 'Евлеев', 'Вадимович', 'm', '1990-01-21','Novo-Savinovskiy', '89553257856'),
  (02,'Ольга', 'Злоблина', 'Владимировна', 'f', '1984-06-29','Novo-Savinovskiy', '89172547894' ),
  (03,'Лия','Ахметшина', 'Меджидовна', 'f', '1998-07-09','Novo-Savinovskiy', '89175498532'),
  (04,'Андрей', 'Мягков', 'Васильевич', 'm', '1978-07-08','Novo-Savinovskiy', '89275479251');
  

INSERT INTO reception (id_reception, priem_doctor_id, priem_patient_id, receipt_date, treatment_dates, problem, has_ill, weekday) VALUES
  (001, '1', '04',  '2015-12-31', '7','удалили аппендицит', '1', 'вт'),
  (002, '4', '01',  '2016-01-04', '1', 'переутомился, просто нужно отдохнуть','0', 'пт'),
  (003, '2', '03',  '2016-02-01', '10', 'сломал руку','1','пн'),
  (004, '3', '02',  '2016-01-21', '0', 'повышенное давление, принять зеленый чай','0','пт');