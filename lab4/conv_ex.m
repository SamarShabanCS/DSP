a = -2;  
b = 3;    
r = (b-a).*rand(50,1) + a;  
u = [1/8 1/4 1/4 1/4 1/8]; 
w = conv(r,u);       
x1=0:49; 
x2=0:53; 
figure() 
plot(x1,r, 'r')
hold on 
plot(x2,w, 'g')

