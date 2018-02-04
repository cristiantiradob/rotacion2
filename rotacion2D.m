%Programa para realizar rotaciones con matrices de rotacion en 2D
%Primero se definen los datos y la fincion que se va a graficar y rotar
close all
clear all
clc
x = 0:0.01:2*pi;
y = sin(x);
%Se finjan los ejes x,y
axis([-3*pi 3*pi -3*pi 3*pi]);
%Se obtiene la grafica inicial
plot(x,y,'b','LineWidth',3);grid on;
%Se crea un vector con todos los datoy obtenidos y se agrega un vector de
%ceros correspondientes a la coordenada z
v = [x' y' zeros(size(x',1),1)];
%Se emplea un ciclo para realizar con ciertos incrementos la operaciones
%de rotacion con matriz de rotacion
for theta=0:0.02:2*pi
%Se obtiene la matriz de rotacion correspondiente a una rotacion
%respecto al eje z
R=[cos(theta),-sin(theta),0;sin(theta),cos(theta),0;0,0,1];
%Se aplica dicha matriz a los datos originales
vr = v*R';
%Se grafican los datos rotados
plot(vr(:,1),vr(:,2),'r','LineWidth',3)
axis([-3*pi 3*pi -3*pi 3*pi]);
grid on
pause(0.01)
end
for theta=0:0.02:2*pi
%Se obtiene la matriz de rotacion correspondiente a una rotacion
%respecto al eje z
R=[cos(theta), 0, sin(theta);0,1,0;-sin(theta), 0,cos(theta)];
%Se aplica dicha matriz a los datos originales
vr = v*R';
%Se grafican los datos rotados
plot(vr(:,1),vr(:,2),'r','LineWidth',3)
axis([-3*pi 3*pi -3*pi 3*pi]);
grid on
pause(0.01)
end
for theta=0:0.02:2*pi
%Se obtiene la matriz de rotacion correspondiente a una rotacion
%respecto al eje z
R=[1,0,0;0,cos(theta),-sin(theta);0,sin(theta),cos(theta)];
%Se aplica dicha matriz a los datos originales
vr = v*R';
%Se grafican los datos rotados
plot(vr(:,1),vr(:,2),'r','LineWidth',3)
axis([-3*pi 3*pi -3*pi 3*pi]);
grid on
pause(0.01)
end