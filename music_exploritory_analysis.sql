-- Data Check
SELECT *
FROM spotify_data;

-- Top 10 tracks
SELECT track_name,
	artist_name,
    track_popularity
FROM spotify_data
ORDER BY track_popularity DESC
LIMIT 26, 10;


-- Top 10 artists
SELECT artist_name,
	ROUND(AVG(artist_popularity), 0) avg_artist_popularity
FROM spotify_data
GROUP BY artist_name
ORDER BY avg_artist_popularity DESC
LIMIT 10;

-- Average duration of Top 10 tracks
WITH top_10_tracks AS (
	SELECT track_name,
		artist_name,
		track_duration_min,
		track_popularity
	FROM spotify_data
	ORDER BY track_popularity DESC
    LIMIT 26, 10
),
avg_duration AS (
	SELECT ROUND(AVG(track_duration_min), 2) AS track_duration_min
	FROM top_10_tracks
)

SELECT CONCAT(
	FLOOR(track_duration_min), ':',
    LPAD(ROUND((track_duration_min - FLOOR(track_duration_min)) * 60), 2, '0')
    ) AS avg_track_duation_min
FROM avg_duration;

-- Explicity affect popularity?
SELECT explicit,
	ROUND(AVG(track_popularity), 2) AS avg_popularity
FROM spotify_data
WHERE explicit IN ('TRUE', 'FALSE')
GROUP BY explicit;








