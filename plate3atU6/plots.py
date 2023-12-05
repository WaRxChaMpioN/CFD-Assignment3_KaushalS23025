import numpy as np
import matplotlib.pyplot as plt

data = np.loadtxt('./postProcessing/forceCoeffs/0/coefficient.dat', skiprows=0)

# use this to understand the forceCOeffs file: https://www.openfoam.com/documentation/guides/latest/doc/guide-fos-forces-force-coeffs.html

plt.plot(data[:,0],data[:,2],label='Drag coefficient')
plt.plot(data[:,0],data[:,3],label='Lift coefficient')
plt.xlabel('time(s)')
plt.legend()
plt.grid()
plt.show()
