
# preProcess.py
# by James King
#
# Pre-processes Medicare hospital quality data for easy ingest into Hive.

import os
import os.path

inputPath = '/home/james/W205/W205/workingData/'
inputFiles = ['hospitals.csv','readmissions.csv','surveys.csv','measureDates.csv','effective_care.csv']

for thisCsv in inputFiles:

	f = os.path.join(inputPath,thisCsv)

	updatedFileName = f.split('.')[0] + '_p.' + f.split('.')[1]

	iFile = open(f,'r')
	oFile = open(os.path.join(inputPath,updatedFileName),'w')

	lines = iFile.readlines()

	isHeader = True
	for line in lines:
		if not isHeader:
			modLine = line.strip('"').replace('","','\t')
			oFile.write(modLine)
		else:
			header = line

		isHeader = False

	iFile.close()
	oFile.close()




