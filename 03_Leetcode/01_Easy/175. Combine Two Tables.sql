/* 
Link to Stratascratch profile:          https://platform.stratascratch.com/user/Jespervb
Link to Hackerrank profile:             https://www.hackerrank.com/jeppakanopolo?hr_r=1
Link to Leetcode profile:               https://leetcode.com/jespervb7/
Link to current interview question:     https://leetcode.com/problems/combine-two-tables/submissions/
Interview question title:               175. Combine Two Tables
*/

SELECT
        pers.firstName
    ,   pers.lastName
    ,   addr.city
    ,   addr.state
FROM person pers
LEFT JOIN address addr
ON pers.personid = addr.personid