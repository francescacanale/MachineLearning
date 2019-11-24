%% Machine Learning: Lab Assignment 3
% Francesca Canale

%% Computing the accuracy
function accuracy = accuracy_plotting(error_rate, digit)

    if nargin <2
        disp('Error: not enough input.');
        return
    end

    [n, d] = size(error_rate);
    
    accuracy = zeros(n,d);
    
    % The k column remains the same
    accuracy(:,1) = error_rate(:,1);
    
    for i=1:n
        accuracy(i,2) = (1 - error_rate(i,2)) * 100; %accuracy = (1-error)*100
    end
    
    % Plotting the accuracy
    figure
    bar(accuracy(:,1), accuracy(:,2));
    xlabel('Value of k');
    ylabel('Accuracy (%)');
    set(gca,'YLim',[98 100]);
    set(gca,'YTick',[98:0.5:100]);
    name = 'Digit ' + string(digit);
    title(name);

end
