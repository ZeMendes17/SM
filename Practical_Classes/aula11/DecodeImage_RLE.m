function Image = DecodeImage_RLE(N,M, Stream)
Image = zeros(N, M);
k = 1;
kNew = 0;
count = 0;

for n = 1 : N
    for m = 1 : M
          if kNew == 0
            count = Stream(k+1);
            kNew = 1;
          end
        
          Image(n,m) = Stream(k);
          count = count-1;
          if count == 0 
            kNew = 0;
            k = k+2; 
          end
    end
end
end

