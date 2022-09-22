%{
Check for N=500,r=2,v=0.2,l=50
decent flocking observed
%}
%%
N=500; % number of particles
r=2;  % interaction radius
v=0.2; % intrinsic velocity 
l=50; % grid length size

% initial positions and angles: uniform random distributions
pos_init = rand(2,N).*l;  
theta_init = rand(1,N).*2*pi;

pos=pos_init;
theta=theta_init;
f=figure(1);
f.Position = [500,50,1000,500];
frames=500; % number of iterations
for t=1:frames
    f;
    xlim([0,l]);
    ylim([0,l])
    scatter(pos(1,:),pos(2,:),'filled');
    title("Viscek Model, frame #"+t);
    pause(1/24);
    [pos,theta]=update_position(pos,theta,N,r,v);
end


