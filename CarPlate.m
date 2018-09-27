%Generate car plates.
function Plate=CarPlate(ii,n,Plate)
A='QWERTYUIOPASDFGHJKLZXCVBNM';
B='1234567890QWERTYUIOPASDFGHJKLZXCVBNM';

if ii<=n
    p1=A(randi(26,1,1));
p2=' ';
pe=B(randi(36,1,5));
Plate{ii,1}=[p1,p2,pe];
    ii=ii+1;
    Plate=CarPlate(ii,n,Plate);
end

for a=1:n
    for b=(a+1):n
        if strcmp(Plate(a),Plate(b))==1
            Plate=CarPlate(ii,n,Plate);
        end
    end
end

end
