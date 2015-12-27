function sup = FindSup(item, L, supports)%找对应频繁项集item的支持度

for i=1:size(L,1)
    l = nonzeros(L(i,:));
    if(isequal(l', item))
        sup = supports(i);
    end
end

