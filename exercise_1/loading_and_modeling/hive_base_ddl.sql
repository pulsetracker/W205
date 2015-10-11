
DROP TABLE hospitals;
DROP TABLE measureDates;
DROP TABLE readmissions;
DROP TABLE surveys;

CREATE EXTERNAL TABLE hospitals
(Provider_ID VARCHAR(500),
Hospital_Name VARCHAR(500),
Hospital_Address VARCHAR(500),
Hospital_City VARCHAR(500),
Hospital_State VARCHAR(500),
Hospital_Zip VARCHAR(500),
Hospital_County VARCHAR(500),
Hospital_Phone VARCHAR(500),
Hospital_Type VARCHAR(500),
Hospital_Ownership VARCHAR(500),
Emergency_Servicds VARCHAR(500))
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t'
STORED AS TEXTFILE;

CREATE EXTERNAL TABLE measureDates
(Measure_Name VARCHAR(500),
Measure_ID VARCHAR(500),
Measure_Start_Quarter VARCHAR(500),
Measure_Start_Date VARCHAR(500),
Measure_End_Quarter VARCHAR(500),
Measure_End_Date VARCHAR(500))
ROW FORMAT DELIMITED FIELDS TERMINATED BY  '\t'
STORED AS TEXTFILE;

CREATE EXTERNAL TABLE readmissions
(Provider_ID VARCHAR(500),
Hospital_Name VARCHAR(500),
Address VARCHAR(500),
City VARCHAR(500),
State VARCHAR(500),
ZIP_Code VARCHAR(500),
County_Name VARCHAR(500),
Phone_Number VARCHAR(500),
Measure_Name VARCHAR(500),
Measure_ID VARCHAR(500),
Compared_to_National VARCHAR(500),
Denominator VARCHAR(500),
Score VARCHAR(500),
Lower_Estimate VARCHAR(500),
Higher_Estimate VARCHAR(500),
Footnote VARCHAR(500),
Measure_Start_Date VARCHAR(500),
Measure_End_Date VARCHAR(500) )
ROW FORMAT DELIMITED FIELDS TERMINATED BY  '\t'
STORED AS TEXTFILE;

CREATE EXTERNAL TABLE surveys
(Provider_Number VARCHAR(500),
Hospital_Name VARCHAR(500),
Address VARCHAR(500),
City VARCHAR(500),
State VARCHAR(500),
ZIP_Code VARCHAR(500),
County_Name VARCHAR(500),
Communication_with_Nurses_Achievement_Points VARCHAR(500),
Communication_with_Nurses_Improvement_Points VARCHAR(500),
Communication_with_Nurses_Dimension_Score VARCHAR(500),
Communication_with_Doctors_Achievement_Points VARCHAR(500),
Communication_with_Doctors_Improvement_Points VARCHAR(500),
Communication_with_Doctors_Dimension_Score VARCHAR(500),
Responsiveness_of_Hospital_Staff_Achievement_Points VARCHAR(500),
Responsiveness_of_Hospital_Staff_Improvement_Points VARCHAR(500),
Responsiveness_of_Hospital_Staff_Dimension_Score VARCHAR(500),
Pain_Management_Achievement_Points VARCHAR(500),
Pain_Management_Improvement_Points VARCHAR(500),
Pain_Management_Dimension_Score VARCHAR(500),
Communication_about_Medicines_Achievement_Points VARCHAR(500),
Communication_about_Medicines_Improvement_Points VARCHAR(500),
Communication_about_Medicines_Dimension_Score VARCHAR(500),
Cleanliness_and_Quietness_of_Hospital_Environment_Achievement_Points VARCHAR(500),
Cleanliness_and_Quietness_of_Hospital_Environment_Improvement_Points VARCHAR(500),
Cleanliness_and_Quietness_of_Hospital_Environment_Dimension_Score VARCHAR(500),
Discharge_Information_Achievement_Points VARCHAR(500),
Discharge_Information_Improvement_Points VARCHAR(500),
Discharge_Information_Dimension_Score VARCHAR(500),
Overall_Rating_of_Hospital_Achievement_Points VARCHAR(500),
Overall_Rating_of_Hospital_Improvement_Points VARCHAR(500),
Overall_Rating_of_Hospital_Dimension_Score VARCHAR(500),
HCAHPS_Base_Score VARCHAR(500),
HCAHPS_Consistency_Score VARCHAR(500))
ROW FORMAT DELIMITED FIELDS TERMINATED BY  '	'
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "/home/james/W205/W205/exercise_1/loading_and_modeling/dataLake/hospitals_p.csv" INTO TABLE hospitals;
LOAD DATA LOCAL INPATH "/home/james/W205/W205/exercise_1/loading_and_modeling/dataLake/readmissions_p.csv" INTO TABLE readmissions;
LOAD DATA LOCAL INPATH "/home/james/W205/W205/exercise_1/loading_and_modeling/dataLake/measureDates_p.csv" INTO TABLE measureDates;
LOAD DATA LOCAL INPATH "/home/james/W205/W205/exercise_1/loading_and_modeling/dataLake/surveys_p.csv" INTO TABLE surveys;
