use Learning_SQL;

select * from spotify_tracks;

select release_date from spotify_tracks
where track_id in ('003vvx7Niy0yvhvHt4a68B', '6Qyc6fS4DsZjB2mRW9DsQs');

update spotify_tracks
set release_date = '1998-06-01'
where track_id = '6Qyc6fS4DsZjB2mRW9DsQs';

alter table spotify_tracks alter column release_date date;


-- top 10 famous songs
select top 10 track_name, artist, popularity from spotify_tracks
order by popularity desc;

-- most frequent artists in top trending list
select artist, count(*) as total_songs from spotify_tracks
group by artist
order by total_songs desc;

-- Distribution of tracks by release year
select year(release_date) as release_year, count(*) as total_tracks from spotify_tracks
group by year(release_date)
order by release_year desc;