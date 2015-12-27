clear;
clc; 
load 'testdata.mat'%读入事务矩阵（每行代表一个事务，每列代表一个项）
PrintTransactions(testdata);%打印出事务
min_sup = 2;%初始化最小支持度
min_conf = 0.7;%初始化最小置信度
[rules_left, rules_right] = Apriori(testdata, min_sup, min_conf);%运算Apriori算法
PrintRules(rules_left, rules_right);%打印强关联规则
