function Stream = EncodeImage_RLE(Image)

  [N,M] = size(Image);
  
  count = uint8(0); 
  
  k = 1;
  Stream(k) = Image(1,1); 
  
  for n = 1 : N
    for m = 1 : M
      if Image(n,m) == Stream(k) 
        count = count+1;
        
        if count == 255 
          k = k + 1;
          Stream(k) = count;
          
          k = k+1; 
          Stream(k) = Image(n,m);
          count = 1;
        end
      else 
        k = k+1;
        Stream(k) = count; 
        
        k = k+1;
        Stream(k) = Image(n,m); 
        count = 1; 
      end
     end
   end

  k = k+1; 
  Stream(k) = count;
end

