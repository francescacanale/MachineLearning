%% Machine Learning: Lab Assignment 3
% Francesca Canale

%% Building a kNN classifier
function [classification, error_rate] = kNN_classifier(training_set, test_set, k, ground_truth)
    
    if nargin <3
        disp('Error: not enough input.');
        return
    end
    
    [n, d] = size(training_set);
    [m, c] = size(test_set);
    
    % Checking number of coloumns
    if (d ~= c+1) 
        disp('Error: incorrect size of the sets.');
        return 
    end
    
    % Checking k
    if (k < 0 || k > n) % || mod(k, 10) == 0 
        disp('Error: incorrect choose of k.');
        return 
    end
    if (mod(k, 10) == 0)
        disp('It is better to choose another value of k: this one is multiple of the number of classes.');
    end

    % Classifying the test set according to the kNN rule, and returning the classification obtained
    [~ , training_index] = pdist2(training_set(:, 1:(end-1)), test_set, 'euclidean', 'Smallest', k); % Euclidean distance

    class = zeros(k, m);
    for i=1:k
        for j=1:m
            class(i, j) = training_set(training_index(i, j), end);
        end
    end

    classification = zeros(m, 1);
    for i=1:m
        classification(i,1) = mode(class(:, i));
    end

    % Computing the error rate
    if nargin > 3
        error_rate = (sum(classification ~= ground_truth))/m;
    end
    
end