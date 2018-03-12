clc; clear all; close all;

%-------------------------------------------
% Pide el archivo al usuario
%-------------------------------------------
% https://www.gnu.org/software/octave/doc/v4.2.0/I_002fO-Dialogs.html
% fname:  Nombre del archivo
% fpath:  Carpeta contenedora del archivo
% fltidx: ID consecutivo del archivo
[fname, fpath, fltidx] = uigetfile()

%-------------------------------------------
% Leer Imagen seleccionada
%-------------------------------------------
[img, map, alpha] = imread([fpath fname]);

%-------------------------------------------
% Extraer colores y graficarlos
%-------------------------------------------
%Define las posiciones de los colores
Red       = 1;
Green     = 2; 
Blue      = 3;
[H,W,L]   = size(img);

%-------------------------------------------
% Etiqueta los ejes
%-------------------------------------------
%Define las posiciones de los colores
Red       = 1;
Green     = 2; 
Blue      = 3;
%Prepara la grafica
scatter3(0,0,0,"o","filled",'MarkerFaceColor',[0,0,0]);
hold on;
%Para cada pixel
step = 20;
for x=1:step:W
  for y=1:step:H
    index = W*(x-1) + y;
    scatter3(
              img(y,x,Red),
              img(y,x,Green),
              img(y,x,Blue),
              'o',
              'MarkerEdgeColor',
              [(double(img(y,x,Red))/255.0) (double(img(y,x,Green))/255.0) (double(img(y,x,Blue))/255.0)]
            );
  end 
end

%-------------------------------------------
% Plot Ejemplo
%-------------------------------------------
xlabel("Rojo");
ylabel("Verde");
zlabel("Azul")
