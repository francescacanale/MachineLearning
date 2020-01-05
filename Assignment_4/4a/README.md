# Lab assignment 4a: Neural networks
Task 0: Neural networks in Matlab
Task 1: Feedforward multi-layer networks (multi-layer perceptrons) 
Describe everything in a report.

Benchmark data repositories:

- UCI Machine Learning Repository contains hundreds of data sets of all types and sizes
Well-known datasets from UCI: Iris, 20 Newsgroups, Wine, Breast Cancer Wisconsin (Diagnostic), Human activity recognition  using smartphones
- The NIST handwritten digits data set from the American "National Institute of Standards and Technology"
A choice of character images from NIST is includded in The MNIST handwritten character database that you already used.
- Kaggle hosts machine learning competitions and has many datasets available, including links to UCI

## Task 0: Neural networks in Matlab
In this assignment you will use Matlab's own neural network tools, contained in a library called Neural Networks Toolbox

Matlab doc page: The Neural Networks Toolbox ("Shallow networks")

To get acquainted with the toolbox, first execute the introductory tutorial

Matlab tutorial: Fit Data with a Neural Network

One thing to be aware of: the library assumes a different convention for the data.

While we always had patterns as rows and variables as columns, here the functions expect patterns as columns and variables as rows. So you have to transpose data matrices if they follow our standard rather than Matlab's (e.g., Iris).

This is not a problem if you use the GUI (it lets you choose), but when using the functions directly it is important to be careful.

## Task 1: Feedforward multi-layer networks (multi-layer perceptrons)
Execute the tutorial:

Matlab tutorial: Classify Patterns with a Neural Network

You can try with various data sets.

For the report, create result tables or use the confusion matrices automatically generated by the Matlab apps, obtaining experimental results for a couple different problems (data sets) and with different design choices (number of layers, number of units per layer).