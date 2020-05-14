function s = saddle(M)
[r, c] = size(M);

s = [];

if r > 1
    cols = min(M);          % find the min value in each column if more than 1 row
else
    cols = M;               % vector is a special case, min would give a single value
end
if c > 1
    rows = max(M');         % find the max value in each row
else
    rows = M;               % vector is a special case, max would give a single value
end
for ii = 1:c                
    for jj = 1:r            
        if M(jj,ii) == cols(ii) && M(jj,ii) == rows(jj) 
            s = [s; jj ii];                             
        end
    end
end
