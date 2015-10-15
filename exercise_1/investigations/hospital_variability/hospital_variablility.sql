
-- Based on Effective Care score (high is good) 
SELECT COUNT(ecscore), ROUND(AVG(cast(ecscore as INT))), ROUND(STDDEV(cast(ecscore as INT))) AS A1, measure_name 
FROM TxProcedures
WHERE (CAST(ecscore AS INT) IS NOT NULL) 
GROUP BY measure_name 
ORDER BY A1 DESC 
LIMIT 10;

-- Based on Readmission (Low is good) 
SELECT COUNT(rscore), ROUND(AVG(cast(rscore as INT))), (STDDEV(cast(rscore as INT))) as A2, measure_name 
FROM TxProcedures
WHERE (CAST(rscore AS INT) IS NOT NULL) 
GROUP BY measure_name 
ORDER BY A2 DESC
LIMIT 10;
