CREATE TYPE gender AS ENUM ('m','f');
CREATE TYPE weekday AS ENUM ('пн','вт','ср','чт','пт','сб','вс');

CREATE TABLE doctors
(
  id_doctor serial PRIMARY KEY,
  first_name character varying(50) NOT NULL,
  surname character varying(50) NOT NULL,
  last_name character varying(50) NOT NULL,
  birthday date NOT NULL,
  work_experience character varying(2),
  medical_profession character varying(50)
  CONSTRAINT chk_doctors CHECK (id_doctor>0)
 );

 CREATE TABLE patients
(
  id_patient serial PRIMARY KEY,
  first_name character varying(50) NOT NULL,
  surname character varying(50) NOT NULL,
  last_name character varying(50) NOT NULL,
  birthday date NOT NULL,
  district VARCHAR(50),
  phone VARCHAR(11) UNIQUE,
  gender gender,
  CONSTRAINT chk_district CHECK (id_patient>0 AND district='Novo-Savinovskiy')
);

CREATE TABLE reception /* таблица приемы */
(
  id_reception serial PRIMARY KEY,
  receipt_date date NOT NULL,
  priem_doctor_id integer REFERENCES doctors(id_doctor) ON DELETE CASCADE,
  priem_patient_id integer REFERENCES patients(id_patient) ON DELETE CASCADE,
  treatment_dates integer,
  has_ill boolean,
  weekday weekday,
  problem text
);
