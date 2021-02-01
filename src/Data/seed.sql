INSERT INTO Critic (id) VALUES (1);

INSERT INTO Book (title,isbn,year) VALUES ("The Gilded Chain", 9780380791262, 1999);

INSERT INTO Review (score,data,critic_id,book_id) VALUES (5, "I loved its action and the journey about Durendal",1,1);

INSERT INTO Author (first_name,last_name) VALUES ("Dave", "Duncan");

INSERT INTO WrittenBy (book_id,author_id) VALUES (1, 1);

INSERT INTO Genre (name) VALUES ("Fantasy");

INSERT INTO Genre (name) VALUES ("Action");

INSERT INTO BookGenre (book_id,genre_id) VALUES (1, 1);

INSERT INTO BookGenre (book_id,genre_id) VALUES (1, 2);

