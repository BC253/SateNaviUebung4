%% SatNav U2
clear all;
close all;
clc;
%% Aufgabe 1
load A1;
rA1 = find(A1(:,15)<3);%ratio 越低越差
% A low ratio usually means that integer fixing may not have been successful
pA1 = length(rA1)/length(A1);
Stdx = A1(20:end,8);
Stdy = A1(20:end,9);
Stdz = A1(20:end,10);
figure
plot(Stdx);
hold on
plot(Stdy);
plot(Stdz);
legend('x','y','z')
%% Aufgabe 2
load A2;
rA2 = find(A2(:,15)<3);%ratio 越低越差
% A low ratio usually means that integer fixing may not have been successful
pA1 = length(rA2)/length(A2);
Stdx = A1(:,8);
Stdy = A1(:,9);
Stdz = A1(:,10);
Stdx1 = A2(:,8);
Stdy2 = A2(:,9);
Stdz3 = A2(:,10);
figure
plot(Stdx,'o');
hold on
plot(Stdy,'o');
plot(Stdz,'o');
plot(Stdx1);
hold on
plot(Stdy2);
plot(Stdz3);
legend('rtkx','rtky','rtkz','pppx','pppy','pppz')
