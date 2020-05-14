function s = saddle(M)
[r, c] = size(M);

s = [];

if r > 1
    cols = min(M);          
else
    cols = M;               
end
if c > 1
    rows = max(M');        
else
    rows = M;              
end
for ii = 1:c                
    for jj = 1:r           
        if M(jj,ii) == cols(ii) && M(jj,ii) == rows(jj) 
            s = [s; jj ii];                            
        end
    end
end
