function c = CheckSup(dataset, item)%计算项集的支持度（在事务集中出现的次数）

n = size(dataset,1);%事务的个数
c = 0;%支持度，初始为0
for i=1:n
    if(all(ismember(item,dataset(i,:))) == 1)%若项集包含在事务i中
        c = c+1;
    end
end

