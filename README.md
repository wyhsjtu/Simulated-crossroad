# MatLab Project for A Simulated Crossing Road
___________________________
* For the details on this project, please refer to p1.pdf

* Regarding the copyright or plagiarism (for JI students), please jump to the end of this readme.
_______________________________
In Ex.1., the main program is p1_main.m, with several functions used to achieve the goal.

Here's the procedure of this program.

1. Input: The user has to input the following data with some requirements:

* The total number of cars.[This should be an integer.]

* The width of the crossroad.[This figure,w,ought to be an EVEN NUMBER and should be larger than 14.]

* The probability that the car stops at the red light (from 0-1) [The closer to 1,the more likely it will stop at the red light.]

* The probability for a car to turn left of right (from 0-1) [The closer to 0, the more likely it will follow a straight line. For left or right turns, this is determined randomly, with equal probability.]

* The color cycle for green,orange and red light in second(s).

-----bonus-------------

*The user can customize the speed for the cars. [The unit for the speed is unit/0.2s. However, this figure, v, should be less than or equal to 1, and can be divided by 1.]

2. Generate the random numbers of cars in 4 lanes.(That is, 4 directions.) 

3. Plot the cars in different traffic lines according to the gernerated random numbers assigned to them. This program takes the coordinates of their current position. Also, each car is assigned with features such as: how it turns and whether it violates the traffic rules.

4. Timer has been set to take the record of the overall time used. For the main loop in the main program, the time for it is also recorded so that each loop can maintain exactly 0.2s. Thus the animation will be more accurate.

5. Plot the street according the width, with four traffic lights changing colors according to the seconds the player assigned. As the overall time is taken, lights can change color continuously in cycles according to the time interval.

6. The cars will automatically move in the streets: stop, go and cross the streets according to the traffic lights. (Some cars will violate the traffic rules, and such probability has been decided by the player.)

7. If two cars crash, the game comes to a halt and an error information will be displayed. If not, then the player wins the game.

8. The plate of all cars that did not stop at the traffic light (i.e., cars violating the basic traffic rules) will be recorded.

*************
How to run the program?

* Open p1_main, click 'RUN'. After typing in essential parameters the program will run automatically!


***********************
Known bugs:
1. When the speed of cars is set too high by the user, while the cars follow the basic rules for reading traffic lights, the animation may not seem to be this case. This is caused by the time interval in one loop. 

Solution:
1.The user can only set the car speed at a reasonable level. Thus, I deliberately make the user type in v less than 1 while ensuring that it can be divided by 1.

___________________________________________________
Ex.2 (1)
a) First, we take an input of a set of elements.
Then, we arrange the new sets in these steps:

1. Arrange one element to create the first set of permutation, each containing only one element.

2. Based on the first set in step 1., we add one unduplicated element to them and arrange the orders of the added elements. Then we get new sets, each containing two elements.

3. Repeat the process in step 2., i.e., add one more unduplicated element to the previous set to create new sets.

4. When we have already created all the sets that contain the maximun number of elements, we stop the recursion, and store all these sets into a cell array. 

b) In this part, we only consider the set that contain n elements.

1. We take the input of the elements. For the first element in the new set, we place each element into the first place in a series of sets. Here we get several sets, each beginning with different elements that stem from the user's inputs.

2. Based on the sets created in step 1., we add one different element to each set as the second part in it. Therefore, we get a series of unique sets with two elements.

3. We repeate step 2. till we finally create sets that has n elements each inside.

_________________________________________________
Ex.2 (2)
Please open file: Ex_2_2.m

This script assigns each car with a car plate.

The player just have to input the number of the cars in terms of n, then the function will generate car plates that meets the requirement: the first character is a letter, the second is a space, and the rest five is the combination of numbers and letters.
Each car is assigned with a UNIQUE plate.

This function first generates all the car plates, then decide whether they meet the requirement. If not, recursion is imployed to generate new sets of plates.
The plate for a certain car corresponds to the number of car in the cell 'Plate'.

*Known bugs:

None.
_________________________________________________
Ex.2 (3)

Feature:

The plate of all cars that did not stop at the traffic light (i.e., cars violating the basic traffic rules) will be recorded.

_________________________________________________
## Copyright and Plagiarism:

This is an individual assignment for a computer programming course. 

If you want to get to learn MatLab, feel free to download and use it for reference. 

If you have any comments or criticisms, feel free to send me an E-mail. I'd appreciate it if you have some constructive ideas to share with me! :-)

For JI students:

If you want to copy the code for your assignments (maybe for this same course in the future), this is a violation of the Honor Code and is strictly prohibited. BTW, I will NOT take any responsibility of this.

THINK CAREFULLY BEFORE YOU LEAP!
