%Draw the road for this program.
function DrawRoad(w)
line([-80,-w/2],[w/2,w/2],'Linewidth',3,'Color','black');
line([w/2,80],[w/2,w/2],'Linewidth',3,'Color','black');
line([-80,-w/2],[-w/2,-w/2],'Linewidth',3,'Color','black');
line([w/2,80],[-w/2,-w/2],'Linewidth',3,'Color','black');
%Verticle lines
line([-w/2,-w/2],[-w/2,-80],'Linewidth',3,'Color','black');
line([w/2,w/2],[w/2,80],'Linewidth',3,'Color','black');
line([-w/2,-w/2],[w/2,80],'Linewidth',3,'Color','black');
line([w/2,w/2],[-w/2,-80],'Linewidth',3,'Color','black');
%Separate lines(These lines stay stationary!)
line([w/2,80],[0,0],'Linewidth',1,'Color','black','linestyle','-  -');
line([-80,-w/2],[0,0],'Linewidth',1,'Color','black','linestyle','-  -');
line([0,0],[-80,-w/2],'Linewidth',1,'Color','black','linestyle','-  -');
line([0,0],[w/2,80],'Linewidth',1,'Color','black','linestyle','-  -');
hold on;
axis equal;
axis([-80 80 -80 80]); %This depends on the initial position of cars.
axis off;
end
