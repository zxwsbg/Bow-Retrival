# Bow-Retrival
BOW algorithm based on color histogram.

中文教程： https://blog.csdn.net/zxwsbg/article/details/97681139

## Introduction

> An image retrival method based on Bag-of-words model using color histogram.

## How to use

> Just clone the repo to your own computer and then run it in Matlab.  Follow the order run the `.m` program.

## Method

### step1. Extract Features

* Convert RGB components to YUV components

* save 1536*64 matrix for all images


### step2. Select Features

* Divide a picture into several 8\*8 blocks, and tile each 8\*8 block into a 1\*64 vector

* Choose a ratio, and then select some of those 1*64 vectors to cluster.

### step3. Cluster
* Use **Kmeans** to cluster features.

### step4. Classify

* Divide the original features into the specific class. 

* Generate the **frequency histogram** of each image.
### step5. Calculate Distance

* Calculate the distance between each two images.

* Sort the distance matrix.

### step6. Retrival

* Use a image to test.

* Calculate Presicion-Recall value.

## How to contribute

* 1. Fork the reposity
* 2. Create Branch
* 3. Commit your code
* 4. Create Pull Request




