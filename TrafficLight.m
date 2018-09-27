%Plot traffic lights and decide how they change color.
function [sign,x1,y1,x2,y2,x3,y3,x4,y4]=TrafficLight(r,o,g,w,t1)
cycletime=r+o+g+o;
sign=zeros(1,4);
alpha=0:pi/50:2*pi;
R=w/8;%Radius
x1=w/2+R*cos(alpha); 
y1=w/2+R*sin(alpha); 
plot(x1,y1,'black') ;
x2=-w/2+R*cos(alpha); 
y2=-w/2+R*sin(alpha); 
plot(x2,y2,'black') ;
x3=-w/2+R*cos(alpha); 
y3=+w/2+R*sin(alpha); 
plot(x3,y3,'black') ;
x4=+w/2+R*cos(alpha); 
y4=-w/2+R*sin(alpha); 
plot(x4,y4,'black') ;
%axis equal;
%hold on;
	if mod(t1,cycletime)<r
    fill(x3,y3,'r');fill(x4,y4,'r');
	sign(1,3)=1;sign(1,4)=1;
		elseif mod(t1,cycletime)<r+o
		fill(x3,y3,'y');fill(x4,y4,'y');
		sign(1,3)=2;sign(1,4)=2;
		elseif mod(t1,cycletime)<r+o+g
        fill(x3,y3,'g');
		fill(x4,y4,'g');
		sign(1,3)=3;sign(1,4)=3;
		else
		fill(x3,y3,'y');fill(x4,y4,'y');
		sign(1,3)=2;sign(1,4)=2;
	end
	if mod(t1,cycletime)<g
    fill(x1,y1,'g');
	fill(x2,y2,'g');        %Stay green
	sign(1,1)=3;sign(1,2)=3;
        elseif mod(t1,cycletime)<g+o
        fill(x1,y1,'y');
		fill(x2,y2,'y');    %Green->Yellow
		sign(1,1)=2;sign(1,2)=2;
        elseif mod(t1,cycletime)<g+o+r
        fill(x1,y1,'r');
		fill(x2,y2,'r');    %Green->Yellow->Red
		sign(1,1)=1;sign(1,2)=1;
		else
		fill(x1,y1,'y');
		fill(x2,y2,'y');    %Green->Yellow
		sign(1,1)=2;sign(1,2)=2;
	end

end
