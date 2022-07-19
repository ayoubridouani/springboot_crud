INSERT INTO students (id, firstname, lastname, email, password, note) VALUES (1, 'Ayoub', 'Ridouani 1', 'a1@ayoubridouani.com', '12345678', 15.0);
INSERT INTO students (id, firstname, lastname, email, password, note) VALUES (2, 'Ayoub', 'Ridouani 2', 'a2@ayoubridouani.com', '12345678', 16.0);
INSERT INTO students (id, firstname, lastname, email, password, note) VALUES (3, 'Ayoub', 'Ridouani 3', 'a3@ayoubridouani.com', '12345678', 17.0);
INSERT INTO students (id, firstname, lastname, email, password, note) VALUES (4, 'Ayoub', 'Ridouani 4', 'a4@ayoubridouani.com', '12345678', 18.0);
INSERT INTO students (id, firstname, lastname, email, password, note) VALUES (5, 'Ayoub', 'Ridouani 5', 'a5@ayoubridouani.com', '12345678', 19.0);
INSERT INTO students (id, firstname, lastname, email, password, note) VALUES (6, 'Ayoub', 'Ridouani 6', 'a6@ayoubridouani.com', '12345678', 20.0);

INSERT INTO roles (name) VALUES ('USER');
INSERT INTO roles (name) VALUES ('CREATOR');
INSERT INTO roles (name) VALUES ('EDITOR');
INSERT INTO roles (name) VALUES ('ADMIN');

INSERT INTO users (username, password, enabled) VALUES ('user', '$2a$10$jPRBKFQ5grjV0QvpSSFbeOXcvXYu1a9ihVrypWwXBAJyi5b67jcfq', '1');
INSERT INTO users (username, password, enabled) VALUES ('creator', '$2a$10$jPRBKFQ5grjV0QvpSSFbeOXcvXYu1a9ihVrypWwXBAJyi5b67jcfq', '1');
INSERT INTO users (username, password, enabled) VALUES ('editor', '$2a$10$jPRBKFQ5grjV0QvpSSFbeOXcvXYu1a9ihVrypWwXBAJyi5b67jcfq', '1');
INSERT INTO users (username, password, enabled) VALUES ('creator-editor', '$2a$10$jPRBKFQ5grjV0QvpSSFbeOXcvXYu1a9ihVrypWwXBAJyi5b67jcfq', '1');
INSERT INTO users (username, password, enabled) VALUES ('admin', '$2a$10$jPRBKFQ5grjV0QvpSSFbeOXcvXYu1a9ihVrypWwXBAJyi5b67jcfq', '1');

INSERT INTO users_roles (user_id, role_id) VALUES (1, 1); 
INSERT INTO users_roles (user_id, role_id) VALUES (2, 2); 
INSERT INTO users_roles (user_id, role_id) VALUES (3, 3); 
INSERT INTO users_roles (user_id, role_id) VALUES (4, 2); 
INSERT INTO users_roles (user_id, role_id) VALUES (4, 3); 
INSERT INTO users_roles (user_id, role_id) VALUES (5, 4);