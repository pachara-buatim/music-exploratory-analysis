CREATE TABLE spotify_data (
	track_id TEXT,
    track_name TEXT,
    track_number INT,
    track_popularity INT,
    explicit TEXT,
    artist_name TEXT,
    artist_popularity INT,
    artist_followers INT,
    artist_genres TEXT,
    album_id TEXT,
    album_name TEXT,
    album_release_date DATE,
    album_total_tracks INT,
    album_type TEXT,
    track_duration_min FLOAT
);

LOAD DATA LOCAL INFILE '/Users/pachara/Downloads/archive/spotify_data clean.csv'
INTO TABLE spotify_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
