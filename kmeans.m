function [clusters, mu] = kmeans(data, k)
    rows = size(data,1);
    clusters1 = repmat(3,rows,1);
    clusters = repmat(5,rows,1);
    initial_indices = randi([1 rows], 1, k);
    mu = data(initial_indices, :);
    i = 0;
    while any(clusters1~=clusters)
        distances = pdist2(data, mu);
        [~, I] = min(distances, [], 2);
        clusters1 = clusters;
        clusters = I;
        for j = 1:k
            indices = find(clusters == j);
            mu(j,:) = sum(data(indices,:),1)/length(indices);
        end
        i = i+1;
    end
end

