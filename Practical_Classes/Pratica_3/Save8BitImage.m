function Save8BitImage(file_name,image)

file_ID = fopen(file_name, 'w');
% neste caso so nos interessa a image NxM
[N,M] = size(image);
N = uint16(N);
M = uint16(M);
fwrite(file_ID, N,'uint16');
fwrite(file_ID, M, 'uint16');
fwrite(file_ID, image, 'uint8');
fclose(file_ID);
end

