# Introduction
This project explores top streaming 🎹 **music** and **artists** on a well-known streaming platform.

Check out my SQL query here

# Background
As a guy who has been around music for years. I always wanted to understand how music industry works. I decided to start this project to study the most popular songs and artists.

### The questions I asked:
1. What are the top 10 most popular songs on this platform?
2. What are the top 10 most popular artists on this platform?
3. What is the average duration of the 10 most popular tracks?
4. Is explicity affect how popular the song is?

# Tools I used
- SQL: The main tool for wrangling and analyzing data
- Tableau: The tool for visualize data
- Git & Github: Essentials for sharing my work

# The Analysis
### 1. What are the top 10 most popular songs on this platform?

To identify the top 10 most popular songs. I started by selecting track_name, artist_name and track_popularity columns. Then I ordered by track_popularity in descending order. I need to limit from after the 26th tracks because there are tracks that have misleading information like random artist name and very high popularity rate which is more the the 100 (**the popularity rate is between 0-100**).

```sql
SELECT track_name,
	artist_name,
    track_popularity
FROM spotify_data
ORDER BY track_popularity DESC
LIMIT 26, 10;
```

![Bar chart of top 10 popular music tracks](

### 2. What are the top 10 most popular artists on this platform?
To identify the top 10 most popular artists. I started by selecting artst_name and average artist_popularity. I grouped the result by artist_name because there is an aggrigate function in it. After that I ordered the result by avg_artist_popularity in descending order and the limit the result by 10 rows. (**I use average because there are multiple tracks with the same artist**)

```sql
SELECT artist_name,
	ROUND(AVG(artist_popularity), 0) avg_artist_popularity
FROM spotify_data
GROUP BY artist_name
ORDER BY avg_artist_popularity DESC
LIMIT 10;
```

### What is the average duration of the top 10 most popular tracks?

```sql

```
