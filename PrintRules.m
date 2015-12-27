function PrintRules(rules_left, rules_right)%打印关联规则


fprintf('-------------------------------Rules------------------------------\n');
for i =1:size(rules_left,1)
    fprintf('R%2d:                ',i);
    items = nonzeros(rules_left(i,:));%打印规则左部
    for j=1:size(items,1)
       fprintf('%d', rules_left(i, j));
       if(j == size(items,1))
           fprintf(' ==> ');
       else
           fprintf(', '); 
       end           
    end
    
    items = nonzeros(rules_right(i,:));%打印规则右部
    for j=1:size(items,1)
       fprintf('%d', rules_right(i, j));
       if(j == size(items,1))
           fprintf('\n');
       else
           fprintf(', '); 
       end           
    end
end

fprintf('------------------------------------------------------------------\n\n');