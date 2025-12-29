-- 1. Average rating by genre
SELECT m.genre,
       ROUND(AVG(r.rating), 2) AS avg_rating,
       COUNT(*) AS num_ratings
FROM ratings r
JOIN movies m ON m.movie_id = r.movie_id
GROUP BY m.genre
ORDER BY avg_rating DESC;

-- 2. Top 5 movies by average user rating (min 2 ratings)
SELECT m.title,
       ROUND(AVG(r.rating), 2) AS avg_rating,
       COUNT(*) AS num_ratings
FROM ratings r
JOIN movies m ON m.movie_id = r.movie_id
GROUP BY m.movie_id
HAVING COUNT(*) >= 2
ORDER BY avg_rating DESC
LIMIT 5;

-- 3. Rewatch rate by genre
SELECT m.genre,
       ROUND(100.0 * AVG(r.rewatch), 1) AS rewatch_rate_pct,
       COUNT(*) AS num_ratings
FROM ratings r
JOIN movies m ON m.movie_id = r.movie_id
GROUP BY m.genre
ORDER BY rewatch_rate_pct DESC;
