CREATE TABLE Critic
(
    id  INTEGER PRIMARY KEY
);

CREATE TABLE Review
(
    id          INTEGER PRIMARY KEY,
    score       INTEGER NOT NULL,
    data        TEXT,
    critic_id   INTEGER,
    book_id     INTEGER,
    FOREIGN KEY (critic_id) REFERENCES Critic (id) 
		ON DELETE CASCADE ON UPDATE NO ACTION,
    FOREIGN KEY (book_id) REFERENCES Book (id)
        ON DELETE CASCADE ON UPDATE NO ACTION
);

CREATE TABLE Book
(
    id          INTEGER PRIMARY KEY,
    title       VARCHAR(70),
    isbn        INTEGER NOT NULL,
    year        INTEGER NOT NULL
);

CREATE TABLE Author
(
    id          INTEGER PRIMARY KEY,
    first_name  VARCHAR(40) NOT NULL,
    last_name   VARCHAR(40) NOT NULL
);

CREATE TABLE WrittenBy
(
    book_id    INTEGER PRIMARY KEY,
    author_id  INTEGER PRIMARY KEY,
    FOREIGN KEY (book_id) REFERENCES Book (id) 
		ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY (author_id) REFERENCES Author (id)
        ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE Genre 
(
    id      INTEGER PRIMARY KEY,
    name    NVARCHAR(30) NOT NULL
);

CREATE TABLE BookGenre
(
    book_id   INTEGER PRIMARY KEY,
    genre_id  INTEGER PRIMARY KEY,
    FOREIGN KEY (book_id) REFERENCES Book (id) 
		ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY (genre_id) REFERENCES Genre (id)
        ON DELETE NO ACTION ON UPDATE NO ACTION
);