CREATE TABLE person (
	id BIGINT(20) PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
    mail VARCHAR (50) NOT NULL,
    password VARCHAR(150) NOT NULL
);

INSERT INTO person (id, name, mail, password) values (1, 'Administrateur', 'admin@gmail.com', '$2a$10$X607ZPhQ4EgGNaYKt3n4SONjIv9zc.VMWdEuhCuba7oLAL5IvcL5.');