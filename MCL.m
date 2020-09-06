%
 % @author Marshood Ayoub  
 % @version Oct 2019,
 % @email : Marshood.ayoub@gmail.com
clear;
clc;
% make a network   
clear;
clc;
N = 2694;   % the amount of nodes is 2694
 
net = makeNetwork (N,94); % 94 clusters  
a = net{2};  % a is a associated matrix
%M=[1,1,1,1
%    1,1,0,1
 %   1,0,1,0
  %  1,1,0,1]
   %a=M; 
E=2;
R=20;
for i=1:N % 3. Add self loops to each node 
 
a(i,i)=1;
end
b=a; % B is a Normalize matrix 
S = sum(a,1)
for i=1:N
   for j=1:N
   if(a(i,j)==1)
       b(i,j)=1/S(j);
   end
   end
end
 
% now Expand by taking the eth power of the matrix
C=b;
%for i=1:E
%C = C*b;
%end
C = b^E;
 
%Inflate by taking inflation of the resulting matrix with parameter r
for i=1:N
   for j=1:N
   C(i,j)=power(C(i,j),R);
   end
end
 
% now we want to normalize the new matrix 
 
c1=C; % B is a Normalize matrix 
oldmax=c1;
S = sum(c1,1)
for i=1:N
   for j=1:N
   if(C(i,j)~=0)
       c1(i,j)=C(i,j)/S(j);
   end
   end
end
   C=c1;
   res=0;
  while res ~= 1
 
 
% now Expand by taking the eth power of the matrix
C=c1;
%for i=1:E
%C = C*b;
%end
C = c1^E;
 
%Inflate by taking inflation of the resulting matrix with parameter r
for i=1:N
   for j=1:N
   C(i,j)=power(C(i,j),R);
   end
end
 
% now we want to normalize the new matrix 
 
c1=C; % B is a Normalize matrix 
S = sum(c1,1);
for i=1:N
   for j=1:N
   if(C(i,j)~=0)
       c1(i,j)=C(i,j)/S(j);
   end
   end
end
C=c1;
newmax=oldmax;
oldmax=c1;
tf = isequal(c1,newmax);
res=int8(tf);
 
  end
 
     cfid = fopen ('MCLe2r20.clu','w');
     fprintf (cfid,'*Vertices %d\n',N);  
     clustIndexes(1,94) = N;
     clustVect = zeros (1,N);
     currIndex = 1;
    for i=1:N
        for j=1:N
            if C(i,j)~=0
                        fprintf (cfid,'%d\n',currIndex);
 
            end
        end
       
            currIndex = currIndex + 1;
    end
     
    fclose (cfid);

