# Lab assignment 4b: Neural networks
Task 0: Neural networks in Matlab (see 4a)
Task 1: Feedforward multi-layer networks (multi-layer perceptrons)  (see 4a)
Task 2: Autoencoder

## Task 2: Autoencoder
The simplest autoencoder network is a multi-layer perceptron neural network which has one input layer, one hidden layer (n.hidden units<n.inputs), and one output layer (n.output units=n.inputs).

It is trained using the same pattern as both the input and the target. So for instance input pattern x( l, : ) has target t( l, : )=x( l, : ) (the same as the input).

Note that in this case we don't have any classes or other mapping to learn. This is a special case of unsupervised training. In fact, it is sometimes called "self-supervised", since the target we use is the input pattern itself.

Train a multilayer perceptron as an autoencoder for the MNIST data. Training an autoencoder only amounts to using a multi-layer perceptron neural network for data prepared in a special way (target = input); in its basic form it is not a different neural network algorithm. However, Matlab provides a separate function that is used as follows:

myAutoencoder = trainAutoencoder(myData,nh);
myEncodedData = encode(myAutoencoder,myData);
nh = size (number of units) in the hidden layer.

An autoencoder learns an internal, compressed representation for the data. The interesting output, therefore, is the value of its hidden layer. What we hope is that similar patterns will have similar representations; for instance, we hope that images representing a "1" will correspond to very similar representations, and quite similar to "7" but different from "0" or "8". In other words, that the network will learn the classes. 

The workflow of the experiment is as follows, illustrated for the 10-class MNIST digits problem:

1) Split the data into subsets of different classes x1, x2, ... , x10. (Given that the dataset is relatively large, you may want to extract only some classes.)
2) Create a training set with only 2 classes (e.g., for MNIST you may choose 2 digits like 1 and 8). Experiment with different combinations; some will be easier to learn, some harder.
3) Train an autoencoder on the new, reduced training set (see how to call function "trainAutoencoder" above)
4) Encode the different classes using the encoder obtained
5) Plot the data using the "plotcl" function from the Lab resources Aulaweb section, folder "Matlab code snippets".
When calling plotcl, be sure to transpose the data, to go back to our convention "observations in rows, variables in columns".