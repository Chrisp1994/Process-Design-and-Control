function N=NStruct_c_m(ny,nu)

% A simple function that calculates the possible nxn control stuctures  for a given number of controlled and manipulated variables
% The combinations are limited to square structures (e.g. 1x1 , 2x2 ,...)
% Example
% N= Combine_meas_man(2,2)
% N = [1 4]
%     [2 2] 
% which means:
% 4 1x1 structures (u1)->(y1) , (u1)->(y2) , (u2)->(y1) , (u2)->(y2) 
% 2 2x2 structures (u1,u2)->(y1,y2) , (u1,u2)->(y2,y1)
% Combinations are also printed in command window


if nargin<2 
    throw(MException('MATLAB:notEnoughInputs','Not enough input arguments') ) 
end

if ny < nu
    throw(MException('comb:AtleastEqual','Controlled variables must be at least equal to manipulated') ) 
end


N=zeros(nu,2);
fprintf("---------------------------------------\n")
fprintf("Structure ==> Possible combinations \n")

for i= 1 : min(nu,ny)
    N(i,:)= [i nchoosek(nu,i)*nchoosek(ny,i)*factorial(i)];
    fprintf("%1.0f x %1.0f     ==>    %1.0f \n",i,i,N(i,2))   
end

fprintf("---------------------------------------\n")
fprintf("Total     ==>    %1.0f \n",sum(N(:,2)))