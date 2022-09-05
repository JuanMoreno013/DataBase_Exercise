

-- People who comment on 3 post
SELECT "User".id_user, "User".username FROM "User"
join "Comments" on "User".id_user = "Comments".author
group by "User".id_user, "User".username having count("Comments".id_postc) > 3;


-- Top 10 Active Users
select "User".id_user, "User".username, count("Comments".author) AS comments  FROM "User"
join "Comments" on "User".id_user = "Comments".author
group by "User".id_user, "User".username
order by comments desc , "User".id_user ASC
limit 10;

--Top commented posts
select "Posts".id_post, title, count("Comments".id_postc) AS comments from "Posts"
join "Comments" on "Posts".id_post = "Comments".id_postc
group by "Posts".id_post, title
order by comments desc;

--Top Authors responders (people who responded to)
select "User".id_user, "User".username, count("Comments".parent_id) as comments FROM "User"
join "Comments" on "User".id_user = "Comments".author
where "Comments".parent_id IS NOT null
group by "User".id_user, "User".username
order by comments desc;




