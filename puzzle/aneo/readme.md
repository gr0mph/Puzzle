# Aneo

Speed is equal to distance divide by time.

Between 0 time and 1 time, the light is green so

0 => Maximum speed and 1 => Minimum speed

So, continue reasoning, between 2 times and 3 time, the light is also green so

2 => Maximum speed and 3 => Minimum speed

Use modulo operator for solution.

After create a list of 1km/h and max speed km/h given in parameter.

At each iteration, check each speed and delete each that stop on red light.
Choose maximum speed that has not been deleted.
