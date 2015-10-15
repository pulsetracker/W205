python preProcess.py
hadoop fs -rm -r /root/W205/exercise_1/loading_and_modeling/dataLake
hadoop fs -mkdir /root/W205/exercise_1/loading_and_modeling/dataLake
hadoop fs -put /root/W205/workingData/*_p.csv /root/W205/exercise_1/loading_and_modeling/dataLake
hive -f hive_base_ddl.sql 

