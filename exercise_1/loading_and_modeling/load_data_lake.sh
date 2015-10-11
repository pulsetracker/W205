python preProcess.py
hadoop fs -rm -r /home/james/W205/W205/exercise_1/loading_and_modeling/dataLake
hadoop fs -mkdir /home/james/W205/W205/exercise_1/loading_and_modeling/dataLake
hadoop fs -put /home/james/W205/W205/workingData/*_p.csv /home/james/W205/W205/exercise_1/loading_and_modeling/dataLake
hive -f hive_base_ddl.sql 

