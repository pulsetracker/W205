
import numpy as np
import pylab as plt

iFile = open('/home/james/W205/W205/exercise_1/loading_and_modeling/dataLake/RatingComp.txt/000000_0')
lines = iFile.readlines()

ecscore = []
ecvar =[]
sumscore = []

for line in lines:
	pl = line.strip().split(',')
	ecscore.append(pl[0])
	ecvar.append(pl[1])
	sumscore.append(pl[2])

plt.subplot(2,1,1)
plt.plot(ecscore,sumscore,'.')
plt.xlabel('Effective Care Score')
plt.ylabel('Patient Survey Score')

plt.subplot(2,1,2)
plt.plot(ecvar,sumscore,'.r')
plt.xlabel('Variability of Effective Care Score')
plt.ylabel('Patient Survey Score')

plt.savefig('correlations.png')
plt.show()

ecCorr = np.corrcoef(ecscore,sumscore)
varCorr = np.corrcoef(ecvar,sumscore)

print 'Coefficient of Correlation for Rating: ' , ecCorr
print 'Coefficient of Correlation for Variability: ' , varCorr


