/* Assuming that a high score is good */

DROP TABLE TxHospitals;

CREATE TABLE TxHospitals AS
SELECT EC.provider_id, EC.hospital_name, EC.state, EC.score as ecscore, R.score as rscore
FROM effective_care EC INNER JOIN readmissions R ON EC.provider_ID = R.provider_ID;



