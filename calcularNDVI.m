clc; clear all; close all;
tic;
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
[H,W,L]   = size(img);
%imgNDVI   = zeros(H,W,L);
imgNDVI   = img;

%-------------------------------------------
% Extraer colores y graficarlos
%-------------------------------------------
%Define las posiciones de los colores
Red       = 1;
Green     = 2; 
Blue      = 3;
Infrared  = Blue;

%-------------------------------------------
%Calcula el ´Indice de Sanidad
%-------------------------------------------
colorInfrarojo    = double(img(:,:,Infrared));
colorRojo         = double(img(:,:,Red));
NDVI              = zeros(H,W);
NDVI              = (colorInfrarojo-colorRojo)./(colorInfrarojo+colorRojo);

%-------------------------------------------
% Actualiza la Imagen
%-------------------------------------------
for y=1:1:H
  for x=1:1:W
    valorNDVI     = NDVI(y,x);
    if( valorNDVI < -0.33 )
      img(y,x,:)  = [255 0 0];
    elseif( valorNDVI >= -0.33 && valorNDVI < -0.1 )
      img(y,x,:)  = [180 0 0];
    elseif( valorNDVI >= -0.1 && valorNDVI < 0 )
      img(y,x,:)  = [51 0 0];
    elseif( valorNDVI >= 0 && valorNDVI < 0.1 )
      img(y,x,:)  = [0 51 0];
    elseif( valorNDVI >= 0.1 && valorNDVI < 0.2 )
      img(y,x,:)  = [0 102 0];
    elseif( valorNDVI >= 0.2 && valorNDVI < 0.3 )
      img(y,x,:)  = [0 153 0];
    elseif( valorNDVI >= 0.3 && valorNDVI < 0.4 )
      img(y,x,:)  = [0 204 0];
    elseif( valorNDVI >= 0.4 )
      img(y,x,:)  = [0 255 0];
    end
  endfor
endfor

%-------------------------------------------
% Muestra la imagen en pantalla
%-------------------------------------------
imshow(img);
toc;

%-------------------------------------------
% Guardar Imagen
%-------------------------------------------
% https://www.gnu.org/software/octave/doc/v4.2.0/I_002fO-Dialogs.html
% fname:  Nombre del archivo
% fpath:  Carpeta contenedora del archivo
% fltidx: ID consecutivo del archivo
[fname, fpath, fltidx] = uiputfile();
imwrite(img,[fpath fname]);
