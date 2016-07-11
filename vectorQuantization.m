function [result] = vectorQuantization(data,clusters,k)
    for i=1:k
       if(sum(clusters==i)>0)
           mean1 = mean(data(clusters==i,1));
           mean2 = mean(data(clusters==i,2));
           mean3 = mean(data(clusters==i,3));
           data(clusters==i,1) = mean1;
           data(clusters==i,2) = mean2;
           data(clusters==i,3) = mean3;
       end
    end
    result = data;
end

