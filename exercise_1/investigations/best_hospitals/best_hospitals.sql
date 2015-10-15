-- Based on Effective Care score (high is good) 
SELECT COUNT(ecscore), ROUND(AVG(cast(ecscore as INT))) AS A1, hospital_name 
FROM TxHospitals 
WHERE (CAST(ecscore AS INT) IS NOT NULL) 
GROUP BY hospital_name 
ORDER BY A1 DESC 
LIMIT 10;


-- Based on Readmission (Low is good) 
SELECT count(rscore), ROUND(AVG(CAST(rscore as INT))) as A1, hospital_name
FROM TxHospitals 
WHERE (CAST(rscore AS INT) IS NOT NULL) 
GROUP BY hospital_name 
ORDER BY A1
LIMIT 10;


