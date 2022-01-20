-- Exercise 1 (done for you):
SELECT * FROM users;



-- Exercise 2 (done for you):
SELECT id, first_name, last_name 
FROM users;



-- Exercise 3
select id, first_name, last_name
from users
order by last_name;



-- Exercise 4
select id, image_url, user_id
from posts
where user_id=26;



-- Exercise 5
select id, image_url, user_id
from posts
where user_id=26 or user_id=12



-- Exercise 6
select count(*)
from posts;



-- Exercise 7
select user_id, count(*)
from comments
group by user_id
order by count(*) desc



-- Exercise 8
select posts.id, posts.image_url, posts.user_id,
users.username, users.first_name, users.last_name
from posts inner join users on posts.user_id = users.id
where user_id=26 or user_id=12;



-- Exercise 9
select posts.id, posts.pub_date,
following.following_id
from posts inner join following on posts.user_id = following.following_id
where following.user_id=26;



-- Exercise 10
select posts.id, posts.pub_date,
following.following_id,
users.username
from posts inner join following on posts.user_id = following.following_id
inner join users on users.id = posts.user_id
where following.user_id=26
order by pub_date desc;



-- Exercise 11
insert into bookmarks(user_id, post_id) values(26, 219);
insert into bookmarks(user_id, post_id) values(26, 220);
insert into bookmarks(user_id, post_id) values(26, 221);



-- Exercise 12
delete from bookmarks
where user_id=26 and post_id=219;
delete from bookmarks
where user_id=26 and post_id=220;
delete from bookmarks
where user_id=26 and post_id=221;


-- Exercise 13
update users
set email = 'cyoung2022@gmail.com'
where id = 26;



-- Exercise 14
select posts.id, posts.user_id, count(comments), posts.caption
from posts inner join comments on posts.id = comments.post_id
where posts.user_id = 26
group by posts.id
order by count(comments) desc;