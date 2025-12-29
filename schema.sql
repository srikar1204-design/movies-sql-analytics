PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS ratings;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS users;

CREATE TABLE movies (
  movie_id     INTEGER PRIMARY KEY,
  title        TEXT NOT NULL,
  genre        TEXT NOT NULL,
  release_year INTEGER NOT NULL,
  runtime_min  INTEGER NOT NULL,
  budget_m     REAL,
  revenue_m    REAL,
  imdb_score   REAL
);

CREATE TABLE users (
  user_id   INTEGER PRIMARY KEY,
  age_group TEXT NOT NULL,
  country   TEXT NOT NULL
);

CREATE TABLE ratings (
  rating_id   INTEGER PRIMARY KEY,
  user_id     INTEGER NOT NULL,
  movie_id    INTEGER NOT NULL,
  rating      REAL NOT NULL CHECK (rating >= 0 AND rating <= 10),
  rated_at    TEXT NOT NULL,
  rewatch     INTEGER NOT NULL CHECK (rewatch IN (0,1)),
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);
