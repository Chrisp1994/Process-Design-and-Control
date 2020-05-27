
A simple function that calculates the possible nxn control stuctures  for a given number of controlled and manipulated variables
The combinations are limited to square structures (e.g. 1x1 , 2x2 ,...)
Example
N= Combine_meas_man(2,2)
N = [1 4]
    [2 2] 
which means:
4 1x1 structures (u1)->(y1) , (u1)->(y2) , (u2)->(y1) , (u2)->(y2) 
2 2x2 structures (u1,u2)->(y1,y2) , (u1,u2)->(y2,y1)
Combinations are also printed in command window

