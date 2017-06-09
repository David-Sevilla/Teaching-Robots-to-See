sys1=tf([2.067 247.5],[1 14.44 3013])
figure(1)

Kp=100;
C = tf(conv([1 +60],[1 +122]),[1 0]);
T = feedback(Kp*sys1,1);
step(T);

stepinfo(T)

%%
close all
C=tf([.32 182 7320],[1 0])
T = feedback(C*sys1,1);
step(T);

stepinfo(T)

%%
sys1=tf([2.067 247.5],[1 14.44 3013])
a=20
Kp=30;
C=Kp*tf([1 a],[1 0])
T = feedback(C*sys1,1);
figure(1)
step(T)
figure(2)
pzmap(C*sys1)
figure(3)
Q=tf([1],[1 14.44 3013])
step(C/(1+Q*C))

%%
sys1=tf([2.067 247.5],[1 14.44 3013])
Kd=0; 
Kp=10;
Ki=200; 
C=tf([Kd Kp Ki],[1 0])


%%  Kp=20 KI=300
sys1=tf([2.067 247.5],[1 14.44 3013])
a=100;
Kp=1;
C=Kp*tf([1 a],[1 0])
T = feedback(C*sys1,1);
figure(1)
step(T)
figure(2)
pzmap(C*sys1)
figure(3)
Q=tf([1],[1 14.44 3013])
step(C/(1+Q*C))
stepinfo(T)

