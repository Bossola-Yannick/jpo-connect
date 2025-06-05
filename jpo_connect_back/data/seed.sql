-- Insertion des utilisateurs
INSERT INTO user (nom, prenon, mail, password, role) VALUES
('Yannick', 'Yannick', 'yannick@example.com', '123', 'admin'),
('Alex', 'Alex', 'alex@example.com', '123', 'admin'),
('Martin', 'Claire', 'claire.martin@example.com', 'password123', 'user'),
('Durand', 'Paul', 'paul.durand@example.com', 'password123', 'user'),
('Bernard', 'Julie', 'julie.bernard@example.com', 'password123', 'user');

-- Insertion des JPO
INSERT INTO jpo (nom, lieu, description, date, capacite, total_inscri, createur) VALUES
('JPO Marseille', 'Marseille', 'Journée portes ouvertes à Marseille', '2025-03-15', 100, 86, 1),
('JPO Cannes', 'Cannes', 'Rencontrez-nous à Cannes', '2025-04-20', 50, 481, 1),
('JPO Martigues', 'Martigues', 'Découverte du campus de Martigues', '2025-05-25', 40, 27, 2),
('JPO Toulon', 'Toulon', 'Présentation des formations à Toulon', '2025-06-30', 50, 36, 2),
('JPO Paris', 'Paris', 'Événement spécial à Paris', '2025-07-05', 100, 75, 1),
('JPO Brignoles', 'Brignoles', 'Porte ouverte à Brignoles', '2025-07-10', 30, 25, 2);

-- Insertion des commentaires
INSERT INTO comment (commentaire, qui_comment, date_comment, jpo_id, user_id) VALUES
('Très bon accueil, merci !', 'Paul Durant', '2025-03-15 12:00:00', 1, 1),
("Beaucoup d'infos utiles.", 'Claire Martin', '2025-04-20 16:00:00', 2, 2),
('Bonne organisation.', 'Julie Bernard', '2025-05-25 11:00:00', 3, 3);

-- Insertion des réponses
INSERT INTO response (reponse, qui_repond, date_reponse, user_id, comment_id) VALUES
('Merci pour votre retour !', 'Alex Alex', '2025-03-16 13:00:00', 1, 1),
('Content que cela vous ait aidé.', 'Yannick Yannick', '2025-04-23 17:00:00', 2, 2),
('Merci beaucoup !', 'Yannick Yannick', '2025-05-27 12:00:00', 4, 3);

-- Insertion des inscriptions user_jpo
INSERT INTO user_jpo (user_id, jpo_id) VALUES
(3, 1),
(3, 2),
(5, 2),
(5, 3),
(5, 4),
(4, 5),
(4, 6);