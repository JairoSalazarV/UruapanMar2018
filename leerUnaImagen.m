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