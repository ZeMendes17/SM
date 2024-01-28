%% Ex1
[Image, ColorMap] = imread('Parede_8bit.bmp'); % da as infos da imagem
figure(1)
% imshow('Parede_8bit.bmp'); % mostra a imagem
image(Image);
colormap(ColorMap);

%% Ex2
Save8BitImage('Ex2_data.raw', Image);

%% Ex3
[N,M,Im] = Load8bitImage('Ex2_data.raw');
Im = uint8(Im);
figure(2)
% imshow(Im); % mostra a imagem
image(Im);
colormap(ColorMap);


%% Ex4
Stream = EncodeImage_RLE(Image);

%% Ex5
Save8bitStream('Ex5_data.raw',N, M, Stream)

%% Ex6
[N,M, Stream] = Load8bitStream('Ex5_data.raw');


%% Ex7
Image2 = DecodeImage_RLE(N,M, Stream);
Image2 = uint8(Image2);
figure(3);
image(Image2);
colormap(ColorMap);
