%This function deals with the inital phases of all cars.
function CarPoints=CarsPlot(w,numbers,n,p,t)%input the coordinates of cars
i1=1;i2=1;i3=1;i4=1;%Initialize the flags.
CarPointsx=zeros(n,4);
CarPointsy=zeros(n,4);
CarPoints=[];
CarTurn=zeros(n,1);%1-straight;2-left;3-right
CarViolate=zeros(n,1);%1-violate;0-don't violate
%Initialize all the cars.
			%case 1
				while i1<=numbers(1)
                carx=50+w/2+20*i1;cary=0.25*w;
                xc=[carx-5 carx-5 carx+5 carx+5];yc=[cary-2.5 cary+2.5 cary+2.5 cary-2.5];
                CarPointsx(i1,:)=xc;
                CarPointsy(i1,:)=yc;
                i1=i1+1;
                end
			%case 2
                while i2<=numbers(2)
                carx=-50-w/2-20*i2;cary=-0.25*w;
                 xc=[carx-5 carx-5 carx+5 carx+5];yc=[cary-2.5 cary+2.5 cary+2.5 cary-2.5];
                %fill(xc,yc,'b');
                CarPointsx(numbers(1)+i2,:)=xc;
                CarPointsy(numbers(1)+i2,:)=yc;
                i2=i2+1;
                end
            %case 3
                while i3<=numbers(3)
                cary=50+w/2+20*i3;%-t*0.2;
                carx=-0.25*w;
                xc=[carx-2.5 carx-2.5 carx+2.5 carx+2.5];yc=[cary-5 cary+5 cary+5 cary-5];
                %fill(xc,yc,'b');
                CarPointsx((numbers(1)+numbers(2))+i3,:)=xc;
                CarPointsy((numbers(1)+numbers(2))+i3,:)=yc;
                i3=i3+1;
                end
           % case 4
                while i4<=numbers(4)
                cary=-50-w/2-20*i4;
                carx=0.25*w;
                xc=[carx-2.5 carx-2.5 carx+2.5 carx+2.5];yc=[cary-5 cary+5 cary+5 cary-5];
                %fill(xc,yc,'b');
                CarPointsx((numbers(1)+numbers(2)+numbers(3))+i4,:)=xc;
                CarPointsy((numbers(1)+numbers(2)+numbers(3))+i4,:)=yc;
                i4=i4+1;
                end
for randflag=1:1:n
	ran=rand;
	if p<=ran
    CarViolate(randflag,1)=1;
	else
    CarViolate(randflag,1)=0;
	end
	if t<=ran
    CarTurn(randflag,1)=1;
	elseif t<=(ran+1)/2&&t>ran
    CarTurn(randflag,1)=2;
	else
    CarTurn(randflag,1)=3;
    end
end
%Final output of the matrix of the coordinates of cars
CarPoints=[CarPointsx,CarPointsy,CarTurn,CarViolate]; 
end
