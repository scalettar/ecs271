clear
load MNIST_digit_data
whos

%%% randomly permute data points
rand('seed', 1); %%just to make all random sequences on all computers the same.
inds = randperm(size(images_train, 1));
images_train = images_train(inds, :);
labels_train = labels_train(inds, :);

inds = randperm(size(images_test, 1));
images_test = images_test(inds, :);
labels_test = labels_test(inds, :);


% %%% if you want to use only the first 1000 data points.
% images_train = images_train(1:1000, :);
% labels_train = labels_train(1:1000, :);

% %%% show the 10'th train image
% i = 10;
% close all
% im = reshape(images_train(i, :), [28 28]);
% imshow(im)
% title(num2str(labels_train(i)));
