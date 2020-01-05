%% Machine Learning: Lab Assignment 4b
% Francesca Canale

clear

%% PREPARING DATA
% Loading the data
[trainData1, labelData1] = loadMNIST(0, 1); % Digit 1
[trainData2, labelData2] = loadMNIST(0, 10); % Digit 0

% Splitting the data into subsets of different classes
dimSubset = 100;

Data1 = [trainData1 labelData1];
[n, ~] = size(Data1);
indices1 = randperm(n);
subsetData1 = Data1(indices1(1:dimSubset), :);

Data2 = [trainData2 labelData2];
[m, ~] = size(Data2);
indices2 = randperm(m);
subsetData2 = Data2(indices2(1:dimSubset), :);

% Creating a training set and adapting it to new convention of the data
training = [subsetData1(:, 1:end-1)', subsetData2(:, 1:end-1)'];
label = [subsetData1(:, end)', subsetData2(:, end)'];

%% AUTOENCODER
% Train an autoencoder on training set
nh = 2; % Number of hidden units
myAutoencoder = trainAutoencoder(training, nh);

% Encoding the different classes using the encoder obtained
myEncodedData = encode(myAutoencoder, training);

%% RESULTS
% Plotting the data
plotcl(myEncodedData', label');
legend(['Class ', num2str(labelData1(1))], ['Class ', num2str(labelData2(1))]);
