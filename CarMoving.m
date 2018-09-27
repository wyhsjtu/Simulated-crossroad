%The movement of cars
function CarPoints=CarMoving(numbers,w,sign,CarPoints,CarTurn,CarViolate,carnum,v)
if carnum<=numbers(1)
    %for cars in line 1
	if CarPoints(carnum,1)==w/2
        if sign(1,1)==1
		
			if CarViolate(carnum,1)==1
				CarPoints(carnum,1:4)= CarPoints(carnum,1:4)-v;
				CarPoints(carnum,11)=1;
			end
        elseif sign(1,1)==3%green
			CarPoints(carnum,1:4)= CarPoints(carnum,1:4)-v;
            CarPoints(carnum,11)=0;
        else
            CarPoints(carnum,11)=0;
		end
	elseif CarPoints(carnum,1)>w/2
		if carnum~=1
			if CarPoints(carnum,1)-CarPoints(carnum-1,1)>14
			CarPoints(carnum,1:4)= CarPoints(carnum ,1:4)-v;
			else
			
			end
		else
		CarPoints(carnum,1:4)= CarPoints(carnum,1:4)-v;
		end
	else
		if CarPoints(carnum,5)+CarPoints(carnum,6)==w/2
			if CarTurn(carnum,1)==1
				CarPoints(carnum,1:4)= CarPoints(carnum,1:4)-v;
			elseif CarTurn(carnum,1)==2
				if CarPoints(carnum,1)>-w/2+1
					CarPoints(carnum,1:4)= CarPoints(carnum,1:4)-v;
				else 
					CarPoints(carnum,1:4)=[-w/4-2.5 -w/4-2.5 -w/4+2.5 -w/4+2.5];
					CarPoints(carnum,5:8)=[w/4-6 w/4+4 w/4+4 w/4-6];
				end			
			else
				if CarPoints(carnum,1)>1
					CarPoints(carnum,1:4)= CarPoints(carnum,1:4)-v;
				else 
					CarPoints(carnum,1:4)=[w/4-2.5 w/4-2.5 w/4+2.5 w/4+2.5];
					CarPoints(carnum,5:8)=[w/4-4 w/4+6 w/4+6 w/4-4];
				end	
			end
		elseif CarPoints(carnum,5)+CarPoints(carnum,6)<w/2
			CarPoints(carnum,1:4)=[-w/4-2.5 -w/4-2.5 -w/4+2.5 -w/4+2.5];
			CarPoints(carnum,5:8)=CarPoints(carnum,5:8)-v;
		else
			CarPoints(carnum,1:4)=[w/4-2.5 w/4-2.5 w/4+2.5 w/4+2.5];
			CarPoints(carnum,5:8)=CarPoints(carnum,5:8)+v;
		end
    end

	
	
	
	
elseif carnum<=numbers(1)+numbers(2)
            %cars in line 2
    if CarPoints(carnum,3)==-w/2
        if sign(1,2)==1
			if CarViolate(carnum,1)==1
				CarPoints(carnum,1:4)=CarPoints(carnum,1:4)+v;
				CarPoints(carnum,11)=1;
			end
        elseif sign(1,2)==3%green
			CarPoints(carnum,1:4)=CarPoints(carnum,1:4)+v;
            CarPoints(carnum,11)=0;
        else 
            CarPoints(carnum,11)=0;
		end
	elseif CarPoints(carnum,3)<-w/2
		if carnum~=1+numbers(1)
			if CarPoints(carnum-1,1)-CarPoints(carnum,1)>14
			CarPoints(carnum,1:4)=CarPoints(carnum,1:4)+v;
			else
			end
		else
		CarPoints(carnum,1:4)=CarPoints(carnum,1:4)+v;
		end
	else
		if CarPoints(carnum,5)+CarPoints(carnum,6)==-w/2
			if CarTurn(carnum,1)==1
				CarPoints(carnum,1:4)=CarPoints(carnum,1:4)+v;
			elseif CarTurn(carnum,1)==2
				if CarPoints(carnum,3)<w/2-1
					CarPoints(carnum,1:4)=CarPoints(carnum,1:4)+v;
				else 
					CarPoints(carnum,1:4)=[w/4-2.5 w/4-2.5 w/4+2.5 w/4+2.5];
					CarPoints(carnum,5:8)=[-w/4-4 -w/4+6 -w/4+6 -w/4-4];
				end			
			else
				if CarPoints(carnum,3)<-1
					CarPoints(carnum,1:4)=CarPoints(carnum,1:4)+v;
				else 
					CarPoints(carnum,1:4)=[-w/4-2.5 -w/4-2.5 -w/4+2.5 -w/4+2.5];
					CarPoints(carnum,5:8)=[-w/4-6 -w/4+4 -w/4+4 -w/4-6];
				end	
			end
		elseif CarPoints(carnum,5)+CarPoints(carnum,6)>-w/2
			CarPoints(carnum,1:4)=[w/4-2.5 w/4-2.5 w/4+2.5 w/4+2.5];
			CarPoints(carnum,5:8)=CarPoints(carnum,5:8)+v;
		else
			CarPoints(carnum,1:4)=[-w/4-2.5 -w/4-2.5 -w/4+2.5 -w/4+2.5];
			CarPoints(carnum,5:8)=CarPoints(carnum,5:8)-v;
		end
    end
elseif carnum<=numbers(1)+numbers(2)+numbers(3)
            %cars in line 3
    if CarPoints(carnum,5)==w/2
        if sign(1,3)==1
			if CarViolate(carnum,1)==1
				CarPoints(carnum,5:8)=CarPoints(carnum,5:8)-v;
				CarPoints(carnum,11)=1;
			end
        elseif sign(1,3)==3%green
			CarPoints(carnum,5:8)=CarPoints(carnum,5:8)-v;
            CarPoints(carnum,11)=0;
        else 
            CarPoints(carnum,11)=0;
		end
	elseif CarPoints(carnum,5)>w/2
		if carnum~=1+numbers(1)+numbers(2)
			if CarPoints(carnum,6)-CarPoints(carnum-1,6)>14
			CarPoints(carnum,5:8)=CarPoints(carnum,5:8)-v;
			else
			
			end
		else
		CarPoints(carnum,5:8)=CarPoints(carnum,5:8)-v;
		end
	else
		if CarPoints(carnum,2)+CarPoints(carnum,3)==-w/2
			if CarTurn(carnum,1)==1
				CarPoints(carnum,5:8)=CarPoints(carnum,5:8)-v;
			elseif CarTurn(carnum,1)==2
				if CarPoints(carnum,5)>-w/2+1
					CarPoints(carnum,5:8)=CarPoints(carnum,5:8)-v;
				else 
					CarPoints(carnum,1:4)=[-w/4-4 -w/4-4 -w/4+6 -w/4+6];
					CarPoints(carnum,5:8)=[-w/4-2.5 -w/4+2.5 -w/4+2.5 -w/4-2.5];
				end			
			else
				if CarPoints(carnum,5)>1
					CarPoints(carnum,5:8)=CarPoints(carnum,5:8)-v;
				else 
					CarPoints(carnum,1:4)=[-w/4-6 -w/4-6 -w/4+4 -w/4+4];
					CarPoints(carnum,5:8)=[w/4-2.5 w/4+2.5 w/4+2.5 w/4-2.5];
				end	
			end
		elseif CarPoints(carnum,2)+CarPoints(carnum,3)<-w/2 
			CarPoints(carnum,1:4)=CarPoints(carnum,1:4)-v;
			CarPoints(carnum,5:8)=[w/4-2.5 w/4+2.5 w/4+2.5 w/4-2.5];
		else
			CarPoints(carnum,1:4)=CarPoints(carnum,1:4)+v;
			CarPoints(carnum,5:8)=[-w/4-2.5 -w/4+2.5 -w/4+2.5 -w/4-2.5];
		end
	end

else
%cars in line 4
	if CarPoints(carnum,5)==-w/2-10
        if sign(1,4)==1
			if CarViolate(carnum,1)==1
				CarPoints(carnum,5:8)=CarPoints(carnum,5:8)+v;
				CarPoints(carnum,11)=1;
			end
        elseif sign(1,4)==3
			CarPoints(carnum,5:8)=CarPoints(carnum,5:8)+v;
            CarPoints(carnum,11)=0;
        else 
            CarPoints(carnum,11)=0;
		end
	elseif CarPoints(carnum,5)<-w/2-10
		if carnum~=1+numbers(1)+numbers(2)+numbers(3)
			if CarPoints(carnum-1,5)-CarPoints(carnum,5)>14
			CarPoints(carnum,5:8)=CarPoints(carnum,5:8)+v;
			else
			end
		else
		CarPoints(carnum,5:8)=CarPoints(carnum,5:8)+v;
		end
    else 
		if CarPoints(carnum,2)+CarPoints(carnum,3)==w/2
			if CarTurn(carnum,1)==1
				CarPoints(carnum,5:8)=CarPoints(carnum,5:8)+v;
			elseif CarTurn(carnum,1)==2
				if CarPoints(carnum,6)<w/2-1
					CarPoints(carnum,5:8)=CarPoints(carnum,5:8)+v;
				else 
					CarPoints(carnum,1:4)=[w/4-6 w/4-6 w/4+4 w/4+4];
					CarPoints(carnum,5:8)=[w/4-2.5 w/4+2.5 w/4+2.5 w/4-2.5];
				end			
			else
				if CarPoints(carnum,6)<-1
					CarPoints(carnum,5:8)=CarPoints(carnum,5:8)+v;
				else 
					CarPoints(carnum,1:4)=[w/4-4 w/4-4 w/4+6 w/4+6];
					CarPoints(carnum,5:8)=[-w/4-2.5 -w/4+2.5 -w/4+2.5 -w/4-2.5];
				end	
			end
		elseif CarPoints(carnum,2)+CarPoints(carnum,3)<w/2
			CarPoints(carnum,1:4)=CarPoints(carnum,1:4)-v;
			CarPoints(carnum,5:8)=[w/4-2.5 w/4+2.5 w/4+2.5 w/4-2.5];
		else
			CarPoints(carnum,1:4)=CarPoints(carnum,1:4)+v;
			CarPoints(carnum,5:8)=[-w/4-2.5 -w/4+2.5 -w/4+2.5 -w/4-2.5];
		end           
	end
end
