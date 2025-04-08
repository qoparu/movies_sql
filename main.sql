-- Фильмы
CREATE TABLE movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(255),
    release_year INT,
    budget DECIMAL(15, 2),
    revenue DECIMAL(15, 2),
    runtime INT
);

-- Актеры
CREATE TABLE actors (
    actor_id INT PRIMARY KEY,
    name VARCHAR(255),
    birth_year INT
);

-- Связь фильмов и актеров (многие ко многим)
CREATE TABLE movie_actors (
    movie_id INT,
    actor_id INT,
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (actor_id) REFERENCES actors(actor_id)
);

-- Жанры
CREATE TABLE genres (
    genre_id INT PRIMARY KEY,
    genre_name VARCHAR(50)
);

-- Связь фильмов и жанров
CREATE TABLE movie_genres (
    movie_id INT,
    genre_id INT,
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);

-- Рейтинги
CREATE TABLE ratings (
    rating_id INT PRIMARY KEY,
    movie_id INT,
    user_id INT,
    rating DECIMAL(3, 1),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);
