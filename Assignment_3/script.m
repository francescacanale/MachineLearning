%% Machine Learning: Lab Assignment 3
% Francesca Canale

clear

%% OBTAIN A DATA SET
% Loading training and data sets
[training_set, training_labels] = loadMNIST(0);
[test_set, test_labels] = loadMNIST(1);
    
[n, d] = size(training_set);
[m, c] = size(test_set);

%% kNN CLASSIFIER
k = [1:9 11:19 21:29 31:39 41:49 51:59 61:69 71:79 81:89 91:99 101:109 111:119 121:129 131:139 141:149]; %Different values of k, not multiples of 10
dim_k = max(size(k));

for i=1:dim_k
    [~, error(i, 1)] = kNN_classifier([training_set training_labels], test_set, k(i), test_labels);
end
result = [k' error];
name1 = 'result_k' + string(k(1)) + '-' + string(k(end)) + '.mat';
save(name1, 'result'); %Saving the results

%% TESTING THE ACCURACY
k2 = [1:2:149]; %Different values of k, no multiples of 2
dim_k2 = max(size(k2));

for j=1:10 % For each digit
    for i=1:dim_k2
        [~, error(i, 1)] = kNN_classifier([training_set, training_labels == j], test_set, k2(i), test_labels == j);
    end
    result = [k2' error];
    name2 = 'result_k' + string(k2(1)) + '-' + string(k2(end)) + '_digit' + string(j) + '.mat';
    save(name2, 'result'); %Saving the results
end

%% MAKING GRAPH
% Uploading task 2 results
error_task2 = load(name1);
error_task2 = error_task2.result;

figure
bar(error_task2(:,1), error_task2(:,2), 'BarWidth', 1);
xlabel('Value of k');
ylabel('Error rate');
title('Error rate task 2');

% Uploading task 3 results
error1_task3 = load('result_k1-3_digit1.mat');
error1_task3 = error1_task3.result;
error2_task3 = load('result_k1-3_digit2.mat');
error2_task3 = error2_task3.result;
error3_task3 = load('result_k1-3_digit3.mat');
error3_task3 = error3_task3.result;
error4_task3 = load('result_k1-3_digit4.mat');
error4_task3 = error4_task3.result;
error5_task3 = load('result_k1-3_digit5.mat');
error5_task3 = error5_task3.result;
error6_task3 = load('result_k1-3_digit6.mat');
error6_task3 = error6_task3.result;
error7_task3 = load('result_k1-3_digit7.mat');
error7_task3 = error7_task3.result;
error8_task3 = load('result_k1-3_digit8.mat');
error8_task3 = error8_task3.result;
error9_task3 = load('result_k1-3_digit9.mat');
error9_task3 = error9_task3.result;
error10_task3 = load('result_k1-3_digit10.mat');
error10_task3 = error10_task3.result;

% Computing and plotting the accuracy
accuracy1 = accuracy_plotting(error1_task3, 1);
accuracy2 = accuracy_plotting(error2_task3, 2);
accuracy3 = accuracy_plotting(error3_task3, 3);
accuracy4 = accuracy_plotting(error4_task3, 4);
accuracy5 = accuracy_plotting(error5_task3, 5);
accuracy6 = accuracy_plotting(error6_task3, 6);
accuracy7 = accuracy_plotting(error7_task3, 7);
accuracy8 = accuracy_plotting(error8_task3, 8);
accuracy9 = accuracy_plotting(error9_task3, 9);
accuracy10 = accuracy_plotting(error10_task3, 0);
          
                
                