
-- Based on Effective Care score (high is good) 
DROP TABLE RatingVsSurvey;
DROP TABLE RatingComp;

CREATE TABLE RatingVsSurvey AS
SELECT ROUND(AVG(cast(H.ecscore as INT))) as ecscore, ROUND(STDDEV(cast(H.ecscore as INT))) AS ecvar, 
	ROUND(AVG(cast(S.sumscore as INT))) as sumscore, H.hospital_name
FROM TxSurveys S JOIN TxHospitals H ON S.provider_id = H.provider_id
WHERE (CAST(H.ecscore AS INT) IS NOT NULL) AND (CAST(S.sumscore AS INT) IS NOT NULL)
GROUP BY H.hospital_name
ORDER BY ecscore;


CREATE TABLE RatingComp AS
SELECT ecscore, ecvar, sumscore
FROM RatingVsSurvey;

INSERT OVERWRITE LOCAL DIRECTORY  '/home/james/W205/W205/exercise_1/loading_and_modeling/dataLake/RatingComp.txt'
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ',' 
select * from RatingComp;
