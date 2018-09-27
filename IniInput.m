%Input the basic data this program needs.
function [n,w,p,t,g,o,r,v]=IniInput
n=input('Please input the total number of cars: ');
w=input('Please input the width of the crossroad: ');
p=input('Please input the probability that the car stops at the red light (0-1): ');
t=input('Please input the probability for a car to turn left of right (0-1): ');
g=input('Please input the color cycle for green light in second(s): ');
o=input('Please input the color cycle for orange light in second(s): ');
r=input('Please input the color cycle for red light in second(s): ');
%-------bonus-------------
v=input('Set the speed for the cars (unit(s)/0.2s): ');%The input number can be divided by 1
end
