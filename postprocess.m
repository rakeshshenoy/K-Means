function [result] = postprocess(data,result)
    col = 0;
    row = 0;
    for i = 1:size(data,1)
        if col==0
            col=col+1;
            row=row+1;
        end
        for k = 1:3
            result(row,col,k) = data(i,k);
        end
        col = mod((col+1),size(result,2)+1);
    end
end

