function Save8bitStream(FileName,N, M, Stream)

% FileName: guarda a sequencia de dados produzida pela função da pergunta
% anterior
% N e M formato uint16 
% Stream formato uint8
fileId = fopen(FileName, 'w');

fwrite(fileId, N, 'uint16');
fwrite(fileId, M, 'uint16');
fwrite(fileId, Stream, 'uint8');

fclose(fileId);
end

