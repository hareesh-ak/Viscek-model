%{

The updation rule used below is the basic viscek model updation rule
%}

function [pos,theta] = update_position(pos0,theta0,N,r,v)
l=50;
theta=zeros(1,N);
for i=1:N
    theta(i) = mean(theta0(inside_r(i,r,pos0,N))) + 0.8*randn(1); 
end
pos = pos0 + [cos(theta); sin(theta)].*v;  

pos(1,find(pos(1,:)>l))=0;
pos(1,find(pos(1,:)<0))=l;
pos(2,find(pos(2,:)>l))=0;
pos(2,find(pos(2,:)<0))=l;

end