-- EFFACEMENT DES TABLES
DROP TABLE IF EXISTS user_jpo;
DROP TABLE IF EXISTS response;
DROP TABLE IF EXISTS comment;
DROP TABLE IF EXISTS jpo;
DROP TABLE IF EXISTS user; 

CREATE TABLE user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255),
    prenon VARCHAR(255),
    mail VARCHAR(255),
    password VARCHAR(255),
    role VARCHAR(100)
)ENGINE=InnoDB;

CREATE TABLE jpo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255),
    lieu VARCHAR(255),
    description TEXT,
    date DATETIME,
    capacite INT,
    total_inscri INT,
    createur INT,
    FOREIGN KEY (createur) REFERENCES user(id)
)ENGINE=InnoDB;

CREATE TABLE comment (
    id INT AUTO_INCREMENT PRIMARY KEY,
    commentaire TEXT,
    qui_comment VARCHAR(255),
    date_comment DATETIME,
    jpo_id INT,
    user_id INT,
    FOREIGN KEY (jpo_id) REFERENCES jpo(id),
    FOREIGN KEY (user_id) REFERENCES user(id)
)ENGINE=InnoDB;

CREATE TABLE response (
    id INT AUTO_INCREMENT PRIMARY KEY,
    reponse TEXT,
    qui_repond VARCHAR(255),
    date_reponse DATETIME,
    user_id INT,
    comment_id INT,
    FOREIGN KEY (user_id) REFERENCES user(id),
    FOREIGN KEY (comment_id) REFERENCES comment(id)
)ENGINE=InnoDB;

CREATE TABLE user_jpo (
    user_id INT,
    jpo_id INT,
    PRIMARY KEY (user_id, jpo_id),
    FOREIGN KEY (user_id) REFERENCES user(id),
    FOREIGN KEY (jpo_id) REFERENCES jpo(id)
)ENGINE=InnoDB;