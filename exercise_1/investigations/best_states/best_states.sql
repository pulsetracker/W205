
-- Based on Effective Care score (high is good) 
SELECT COUNT(ecscore), ROUND(AVG(cast(ecscore as INT))) AS A1, state
FROM TxHospitals 
WHERE (CAST(ecscore AS INT) IS NOT NULL) 
GROUP BY state
ORDER BY A1 DESC 
LIMIT 10;

-- Based on Readmission (Low is good) 
SELECT COUNT(rscore), ROUND(AVG(cast(rscore as INT))) AS A2, state
FROM TxHospitals 
WHERE (CAST(rscore AS INT) IS NOT NULL) 
GROUP BY state
ORDER BY A2;
LIMIT 10;

