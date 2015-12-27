function PrintTransactions(dataset)%打印事务

fprintf('-------------------------Transaction List-------------------------\n');
for i =1:size(dataset,1)%获取事务的个数（此处为矩阵的行数），第i个事务
    fprintf('T%2d:                ',i);
    items = nonzeros(dataset(i,:));%取事务中的项（即矩阵每行的非零元素）
    %输出事务列表
    for j=1:size(items,1)%第j项
       fprintf('%d', dataset(i, j));
       if(j == size(items,1))
           fprintf('\n');
       else
           fprintf(', '); 
       end           
    end    
end

fprintf('------------------------------------------------------------------\n\n');