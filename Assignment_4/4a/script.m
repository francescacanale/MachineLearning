%% Machine Learning: Lab Assignment 4a
% Francesca Canale

clear

%% UPLOADING DATA
% Wine data set
wineData = readtable('wine.csv');
wineInput = wineData{:, 2:end};
wineTarget = target_computer(wineData{:, 1});

% Poker hand data set
pokerData = readtable('poker.csv');
pokerInput = pokerData{:, 1:(end-1)};
pokerTarget = target_computer(pokerData{:, end});

% Adapting to new convention of the data
wineInput = wineInput';
wineTarget = wineTarget';
pokerInput = pokerInput';
pokerTarget = pokerTarget';


%% FEEDFOWARD MULTI-LAYER NETWORKS
hiddenUnits = 10;

NeuralNetworkPatternRecognition(wineInput, wineTarget, hiddenUnits);
NeuralNetworkPatternRecognition(pokerInput, pokerTarget, hiddenUnits);
