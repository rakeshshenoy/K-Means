 blob = load('hw4_blob.mat');
 circle = load('hw4_circle.mat');
 K = [2, 3, 5];
 
 for i=1:numel(K)
     k = K(i);
     clusters = kmeans(blob.data2,k);
     scatter(blob.data2(:,1), blob.data2(:,2), [], clusters, 'filled');
     title(sprintf('K-Means algorithm on Blob dataset with K=%d', k));
     xlabel('x1');
     ylabel('x2');
     print(sprintf('blob-%d',k), '-dpng');
 end
 
 for i=1:numel(K)
     k = K(i);
     clusters = kmeans(circle.points,k);
     scatter(circle.points(:,1), circle.points(:,2), [], clusters, 'filled');
     title(sprintf('K-Means algorithm on Circle dataset with K=%d', k));
     xlabel('x1');
     ylabel('x2');
     print(sprintf('circle-%d',k), '-dpng');
 end

hw4img = imread('hw4.jpg');
for i = [24]
    data = preprocess(hw4img);
    clusters = kmeans(data,i);
    quantized = vectorQuantization(data,clusters,i);
    result = postprocess(quantized,hw4img);
    figure
    image(result)
    title(strcat('Image Compression using K-Means with K=',num2str(i))); 
    print(sprintf('image-%d',i), '-dpng');
end
