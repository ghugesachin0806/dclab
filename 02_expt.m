clc;
clear all;
close all;

n=input("Enter the no. of elements  ");
q=input("Enter the matrix p(y/x):"); %matrix P(y/x)
disp(q);
disp("");
N=1;
n;

p=input("Enter the probability:"); %probability for x;
px= diag(p,n,n); %matrix P(x);
disp("P(x):");
disp(px);
disp("");

pxy=px*q; %P(x,y) = P(x) * P(Y/X);
disp("P(x/y):");
disp(pxy);
disp("");

py=p*q;%P(Y)
disp("P(y):");
disp(py);
disp("");

%entropy h(x)
Hx=0;
for i=1:n
 Hx =Hx + (-(p(i)*log2(p(i))));
end
disp("H(x):");
disp("");

%H(y)
Hy=0;
for i=1:n
 Hy =Hy + (-(p(i)*log2(p(i))));
end
disp("H(y):");
disp("");

%H(x,y)
hxy=0;
for i = 1:n
  for j=1:n
    hxy=hxy+(-pxy(i,j)*log2(pxy(i,j)));

  end
end
disp("H(x,y):");
disp(hxy);
disp("");

%H(y/x)
h1=hxy-Hx;
disp("H(Y/X):");
disp(h1);
disp("");

%H(x/y)
h2=hxy-Hy;
disp("H(x/y):");
disp(h2);
disp("");

%I(x,y)
ixy= Hx-h2;
disp("I(x,y):");
disp(ixy);
disp("");

if h2==0
  disp("This is lossless channel");
end

if ixy==0
  disp("This is useless channel");
end

if Hx==Hy
if h1==0
  disp("this is noise less channel");
end
endif
