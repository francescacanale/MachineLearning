%% Machine Learning: Lab Assignment 4a
% Francesca Canale

%% Creating target matrix from a target vector
function target = target_computer(vector)

    [n, ~] = size(vector);
    target = zeros(n, max(vector));

    for i=1:n
        for j=1:max(vector)
            if(vector(i,1) == j)
                target(i, j) = 1;
            end
        end
    end
end