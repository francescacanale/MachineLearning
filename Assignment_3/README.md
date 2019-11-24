# Lab assignment 3: kNN classifier
Task 1: Obtain a data set
Task 2: Build a kNN classifier
Task 3: Test the kNN classifiers
Describe everything in a report.

## Task 1: Obtain a data set
Download the mnist data set. The zipfile contains, in separate files, a training set, corresponding labels, a test set, corresponding labels, two Matlab functions to load data and labels (you don't need these but were distributed along with the data) and one flexible function to load the data. Read the synthetic documentation by typing help loadMNIST.

These data represent handwritten digits in 28x28 greyscale images, and are a standard benchmark for machine learning tasks.

## Task 2: Build a kNN classifier
Here you have to create a program (a Matlab function for instance) that takes the following parameters (input arguments):

1) a set of data, as a n x (d+1) matrix, to be used as the training set
2) another set of data, as a m x d matrix, to be used as the test set
3) an integer k
4) OPTIONALLY, another set of data, as a m x 1 matrix, to be used as the test set ground truth (class labels)

The program should:

1) Check that the number of columns of the second matrix equals the number of columns of the first matrix – 1
2) Check that k>0 and k<=cardinality of the training set (number of rows)
3) Classify the test set according to the kNN rule, and return the classification obtained
4) If the test set has the optional additional column, use this as a target, compute and return the error rate obtained (number of errors / m)

Use the slides to implement the classifier.

## Task 3: Test the kNN classifier
Use the MNIST character recognition data.

Compute the accuracy on the test set

- on 10 tasks: each digit vs the remaining 9 (i.e., recognize whether the observation is a 1 or not; recognize whether it is a 2 or not; ...; recognize whether it is a 0 or not)
- for several values of k, e.g., k=1,2,3,4,5,10,15,20,30,40,50 (you can use other numbers and you can also implement the rule: "k should not be divisible by the number of classes," to avoid ties).

Provide data or graphs for any combination of these parameters (e.g. recognize 1 with k=1,2,3,4...; recognize 2 with k=1,2,3,4...; and so on)