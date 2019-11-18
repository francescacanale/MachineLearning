%% Machine Learning: Lab Assignment 2
% Francesca Canale

% Multi-dimensional linear regression
function slope = linearRegressionMultiD(dataset, target)

    slope = pinv(dataset) * target;
    
end