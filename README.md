# Movies SQL Analytics (SQLite)

## Overview
A small SQL analytics project that analyzes movie metadata and user ratings to answer business-style questions about genre performance, engagement (rewatch behavior), and user segments.

## Dataset
- `movies`: title, genre, release year, budget, revenue, IMDb score
- `users`: age group, country
- `ratings`: rating (0–10), date rated, rewatch flag (0/1)

*Note: Dataset is synthetic and created for portfolio purposes.*

## Key Questions Answered
- Which genres have the highest average ratings?
- Do rewatches correlate with higher ratings?
- How do ratings differ by age group and country?
- Which movies appear “underrated” vs IMDb scores?
- Which movies have the best ROI?

## How to Run
```bash
sqlite3 movies.db < schema.sql
sqlite3 movies.db < seed_data.sql
sqlite3 movies.db ".read analysis.sql"
