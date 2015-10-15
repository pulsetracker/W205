
DROP TABLE TxProcedures;

CREATE TABLE TxProcedures  AS
SELECT EC.provider_ID, EC.measure_name, EC.score AS ecscore, R.score AS rscore
FROM effective_care EC INNER JOIN readmissions R ON EC.provider_ID = R.provider_ID;
