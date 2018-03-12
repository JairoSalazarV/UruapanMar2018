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
%Inicia Imagen
scatter(0,0,"o","filled",'MarkerFaceColor',[0,0,0]);
hold on;
step = 12;
for y=1:step:H
  for x=1:step:W
    valorNDVI     = NDVI(y,x);
    if( valorNDVI < -0.33 )
      scatter(valorNDVI,0,"o",'MarkerEdgeColor',[1 0 0]);
    elseif( valorNDVI >= -0.33 && valorNDVI < -0.1 )
      scatter(valorNDVI,0,"o",'MarkerEdgeColor',[180/255 0 0]);
    elseif( valorNDVI >= -0.1 && valorNDVI < 0 )
      scatter(valorNDVI,0,"o",'MarkerEdgeColor',[51/255 0 0]);
    elseif( valorNDVI >= 0 && valorNDVI < 0.1 )
      scatter(valorNDVI,0,"o",'MarkerEdgeColor',[0 51/255 0]);
    elseif( valorNDVI >= 0.1 && valorNDVI < 0.2 )
      scatter(valorNDVI,0,"o",'MarkerEdgeColor',[0 102/255 0]);
    elseif( valorNDVI >= 0.2 && valorNDVI < 0.3 )
      scatter(valorNDVI,0,"o",'MarkerEdgeColor',[0 153/255 0]);
    elseif( valorNDVI >= 0.3 && valorNDVI < 0.4 )
      scatter(valorNDVI,0,"o",'MarkerEdgeColor',[0 204/255 0]);
    elseif( valorNDVI >= 0.4 )
      scatter(valorNDVI,0,"o",'MarkerEdgeColor',[0 255/255 0]);
    end
  endfor
endfor

%-------------------------------------------
% Muestra la imagen en pantalla
%-------------------------------------------
toc;


