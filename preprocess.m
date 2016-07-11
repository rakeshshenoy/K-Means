function [result] = preprocess(data)
    result = zeros(size(data,1)*size(data,2),3);
    p = 1;
    for i = 1:size(data,1)
        for j = 1:size(data,2);
           for k = 1:3
               result(p,k) = data(i,j,k);
           end
           p = p+1;
        end
    end
end

