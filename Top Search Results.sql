SELECT
(SELECT COUNT(*)
 FROM fb_search_results
 WHERE position IN (1, 2, 3))::FLOAT
/
(SELECT COUNT(*)
 FROM fb_search_results)::FLOAT 
* 100;