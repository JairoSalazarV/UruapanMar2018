clc; clear all; close all;

%-------------------------------------------
% Plot Ejemplo
%-------------------------------------------
plot3([0],[0],[0],".b");
hold on;
plot3([255],[0],[0],"*","color",[1.0,0.0,0.0]);
plot3([0],[255],[0],"+","color",[0.0,1.0,0.0]);
plot3([0],[0],[255],"o","color",[0.0,0.0,1.0]);


%-------------------------------------------
% Etiqueta los ejes
%-------------------------------------------
xlabel("Rojo");
ylabel("Verde");
zlabel("Azul");