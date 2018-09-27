%Generate the random number of cars.
function numbers=CarRandNum(n)
while true
numbers = zeros(1, 4);   % Store our rancom numbers.r is a vector.
sumtemp = floor(n/4);   % The sum of the rest after a random number is generated.
for i=1:3
   numbers(i) = round(sumtemp.*rand()); 
   sumtemp = floor((n - numbers(i))/(4-i) );
end
numbers(4) = n- sum(numbers(1:3));
if numbers(1)~=0&&numbers(2)~=0&&numbers(3)~=0&&numbers(4)~=0
	break
%Guarantee that the numbers are generated as non-zero integers.
end
end
end
