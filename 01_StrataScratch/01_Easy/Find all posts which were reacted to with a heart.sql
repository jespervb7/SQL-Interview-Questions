/* 
Link to Stratascratch profile:          https://platform.stratascratch.com/user/Jespervb
Link to Hackerrank profile:             https://www.hackerrank.com/jeppakanopolo?hr_r=1
Link to current interview question:     https://platform.stratascratch.com/coding/10087-find-all-posts-which-were-reacted-to-with-a-heart?code_type=1
Interview question title:               Find all posts which were reacted to with a heart
*/ 

SELECT DISTINCT
        posts.*
FROM facebook_posts             AS posts
LEFT JOIN facebook_reactions    AS reactions
ON posts.post_id = reactions.post_id
WHERE reactions.reaction = 'heart';