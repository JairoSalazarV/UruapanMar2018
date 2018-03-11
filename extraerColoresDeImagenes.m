clc; clear all; close all;

%-------------------------------------------
% Pide el archivo al usuario
%-------------------------------------------
% https://www.gnu.org/software/octave/doc/v4.2.0/I_002fO-Dialogs.html
% fname:  Nombre del archivo
% fpath:  Carpeta contenedora del archivo
% fltidx: ID consecutivo del archivo
[fname, fpath, fltidx] = uigetfile();

%-------------------------------------------
% Leer Imagen seleccionada
%-------------------------------------------
[img, map, alpha] = imread([fpath fname]);

%-------------------------------------------
% Extraer colores de las imágenes
%-------------------------------------------
%Define las posiciones de los colores
Red       = 1;
Green     = 2; 
Blue      = 3;
%Obtiene el color rojo
imgRed    = img(:,:,Red);
imgGreen  = img(:,:,Green);
imgBlue   = img(:,:,Blue);





