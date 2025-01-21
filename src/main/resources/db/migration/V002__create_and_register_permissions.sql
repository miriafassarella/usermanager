CREATE TABLE permission (
	id BIGINT(20) PRIMARY KEY,
	description VARCHAR(50) NOT NULL
);
CREATE TABLE person_permission (
	id_person BIGINT(20) NOT NULL,
	id_permission BIGINT(20) NOT NULL,
	PRIMARY KEY (id_person, id_permission),
	FOREIGN KEY (id_person) REFERENCES person(id),
	FOREIGN KEY (id_permission) REFERENCES permission(id)
);

INSERT INTO permission (id, description) values (1, 'ROLE_REGISTER_PERSON');
INSERT INTO permission (id, description) values (2, 'ROLE_DELETE_PERSSON');
INSERT INTO permission (id, description) values (3, 'ROLE_SEARCH_PERSON');
INSERT INTO permission (id, description) values (4, 'ROLE_UPDATE_PERSON');

INSERT INTO permission (id, description) values (5, 'ROLE_REGISTER_PRODUCT');
INSERT INTO permission (id, description) values (6, 'ROLE_DELETE_PRODUCT');
INSERT INTO permission (id, description) values (7, 'ROLE_SEARCH_PRODUCT');
INSERT INTO permission (id, description) values (8, 'ROLE_UPDATE_PRODUCT');

-- admin
INSERT INTO person_permission (id_person, id_permission) values (1, 1);
INSERT INTO person_permission (id_person, id_permission) values (1, 2);
INSERT INTO person_permission (id_person, id_permission) values (1, 3);
INSERT INTO person_permission (id_person, id_permission) values (1, 4);
INSERT INTO person_permission (id_person, id_permission) values (1, 5);
INSERT INTO person_permission (id_person, id_permission) values (1, 6);
INSERT INTO person_permission (id_person, id_permission) values (1, 7);
INSERT INTO person_permission (id_person, id_permission) values (1, 8);



