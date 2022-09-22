function indices = inside_r(j,r,pos,N)
indices=[];
for i = 1:N 
    if sqrt((pos(1,j)-pos(1,i)).^2 + (pos(2,j)-pos(2,i)).^2)<r
        indices(end+1)=i;
    end
end
end