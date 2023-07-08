-- Output all columns from the facebook_posts
-- Find all posts that have a heart reaction
-- Make sure there are only unique posts and not duplicates

SELECT DISTINCT
        posts.*
FROM facebook_posts             AS posts
LEFT JOIN facebook_reactions    AS reactions
ON posts.post_id = reactions.post_id
WHERE reactions.reaction = 'heart';