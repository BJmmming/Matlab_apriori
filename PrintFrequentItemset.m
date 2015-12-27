function PrintFrequentItemset(L, supports)%打印频繁项集及其相应支持度

fprintf('---------------------Frequent Itemset|Suppoort--------------------\n');
for i =1:size(L,1)
    fprintf('FI%2d:               ',i);
    items = nonzeros(L(i,:));
    for j=1:size(items,1)
       fprintf('%d', L(i, j));
       if(j == size(items,1))
           fprintf('|support:');
       else
           fprintf(', '); 
       end           
    end
    fprintf('%d\n', supports(i)); 
end

fprintf('------------------------------------------------------------------\n\n');