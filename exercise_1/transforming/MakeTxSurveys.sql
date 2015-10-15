/* Assuming that a high score is good */

DROP TABLE TxSurveys;

CREATE TABLE TxSurveys AS
SELECT provider_id, hospital_name,hcahps_base_score, hcahps_consistency_score, hcahps_base_score + hcahps_consistency_score AS sumscore
FROM surveys;




