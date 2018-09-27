clear all;
%Get the parameters
[n,w,p,t,g,o,r,v]=IniInput;
%Determine cars in the INITIAL PHASE
numbers=CarRandNum(n);
CarPoints=CarsPlot(w,numbers,n,p,t);%output the initial vectors of cars
CarTurn=CarPoints(:,9);
CarViolate=CarPoints(:,10);
t0=clock;
ii=1;
Plate=cell(n,1);
Plate=CarPlate(ii,n,Plate);%Assign each car with a plate!!
Plate1=[];
%count=0;
%count=zeros(n,1);
while true
t2=clock;
t1=etime(t2,t0);
%Draw the basic map.
DrawRoad(w)
%Traffic lights
[sign,x1,y1,x2,y2,x3,y3,x4,y4]=TrafficLight(r,o,g,w,t1);
carnum=1;
for iflag=1:1:n
    CarPoints=CarMoving(numbers,w,sign,CarPoints,CarTurn,CarViolate,carnum,v);
    %Plot cars while moving
	if carnum<=numbers(1)
		fill(CarPoints(carnum,1:4),CarPoints(carnum,5:8),'r');
	elseif carnum<=numbers(1)+numbers(2)
		fill(CarPoints(carnum,1:4),CarPoints(carnum,5:8),'g');
	elseif carnum<=numbers(1)+numbers(2)+numbers(3)
		fill(CarPoints(carnum,1:4),CarPoints(carnum,5:8),[0.8 0.8 0.8]);
	else
		fill(CarPoints(carnum,1:4),CarPoints(carnum,5:8),'b');
    end
carnum=carnum+1;
end
%Test the validility of movements:Collide or not?
Points=zeros(n,1);
for flag1=1:1:n
	Center1x=(CarPoints(flag1,2)+CarPoints(flag1,3))/2;
	Center1y=(CarPoints(flag1,5)+CarPoints(flag1,6))/2;
if Center1x>=-w/2&&Center1x<=w/2&&Center1y>=-w/2&&Center1y<=w/2%¿ÉÒÔ¿¼ÂÇ¼Ó5
	for flag2=1:1:n	
	if flag2~=flag1
		Center2x=(CarPoints(flag2,2)+CarPoints(flag2,3))/2;
		Center2y=(CarPoints(flag2,5)+CarPoints(flag2,6))/2;
		if Center2x>=-w/2&&Center2x<=w/2&&Center2y>=-w/2&&Center2y<=w/2
			if sqrt((Center1x-Center2x)^2+(Center1y-Center2y)^2)<=7.5%0.5±¶µÄ³¤+¿í
                h=text(5*w/6,5*w/6,'Cars crash! YOU LOSE!');
                set(h,'FontWeight','bold','FontSize',20);
                q=text(-70,-3*w/4,'These following cars') ;
        s=text(-70,-1.1*w,'violate traffic rules:');
%Get the plates of cars that violate traffic rules!
        for flag=1:n
            if CarPoints(flag,11)==1
            Plate1=[Plate1;Plate(flag)];
            end
        end
                r=text(3*w/4,-1.1*w,Plate1);
                set(q,'FontWeight','bold','FontSize',15);
                set(s,'FontWeight','bold','FontSize',15);
                set(r,'FontWeight','bold','FontSize',15);
				error('Cars crash! YOU LOSE!');
			end
		end
	end
	end
elseif Center1x<=-90||Center1x>=90||Center1y<=-90||Center1y>=90
		Points(flag1,1)=1;
end
if Points==ones(n,1)
        h=text(5*w/6,5*w/6,'Congragtulations! YOU WIN!');
        set(h,'FontWeight','bold','FontSize',20);
        q=text(-70,-3*w/4,'These following cars') ;
        s=text(-70,-1.1*w,'violate traffic rules:');
        %Get the plates of cars that violate traffic rules!
        for flag=1:n
            if CarPoints(flag,11)==1
            Plate1=[Plate1;Plate(flag)];
            end
        end
                r=text(3*w/4,-1.1*w,Plate);
                set(q,'FontWeight','bold','FontSize',15);
                set(s,'FontWeight','bold','FontSize',15);
                set(r,'FontWeight','bold','FontSize',15);
		error('Congragtulations! YOU WIN!');
end
end
t3=clock;
pause(0.2-etime(t3,t2));%set time interval for the loop exactly 0.2s
cla;
end
