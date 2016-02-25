CREATE TYPE has_ill_status AS ENUM ('yes', 'no');
CREATE TYPE operation_status AS ENUM('yes','no');
CREATE TYPE gender AS ENUM ('m','f');

CREATE TABLE doctors
(
  id_doctor serial PRIMARY KEY,
  first_name character varying(50) NOT NULL,
  surname character varying(50) NOT NULL,
  last_name character varying(50) NOT NULL,
  birthday date NOT NULL,
  work_experience character varying(2),
  medical_profession character varying(50)
 );

 CREATE TABLE patients
(
  id_patient serial PRIMARY KEY,
  first_name character varying(50) NOT NULL,
  surname character varying(50) NOT NULL,
  last_name character varying(50) NOT NULL,
  birthday date NOT NULL,
  phone VARCHAR(11) UNIQUE,
  gender gender
);

CREATE TABLE reception 
(
  id_reception serial PRIMARY KEY,
  has_ill has_ill_status NOT NULL,
  receipt_date date NOT NULL,
  priem_doctor_id integer REFERENCES doctors(id_doctor),
  priem_patient_id integer REFERENCES patients(id_patient),
  treatment_dates integer,
  problem text
);
