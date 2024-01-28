function [N,M, Stream] = Load8bitStream(filename)

fileId = fopen(filename, 'r');
N = fread(fileId, 1, 'uint16');
M = fread(fileId, 1, 'uint16');
Stream = fread(fileId, "uint8");

fclose(fileId);
end

