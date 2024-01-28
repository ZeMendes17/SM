function [N,M,Im] = Load8bitImage(file_name)
%LOAD8BITIMAGE Summary of this function goes here
%   Detailed explanation goes here
file_Id = fopen(file_name, 'r');
N = fread(file_Id,1,"uint16");
M = fread(file_Id,1,"uint16");
Im = fread(file_Id,[N,M], "uint8");
fclose(file_Id);
end

