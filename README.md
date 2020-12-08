# Data Analysis of Shopping Behavior on Double Eleven

Using taobao dataset from double eleven to analyse users' behavior and predic the returned customers.


## Introduction

+ Get basic overview of this festival, such as the toal volume of the transaction, the proportion of the buyer from different age, gender, and trend compared to last year. 

+ Analyse the users' behaviors and tell the relationship between these behaviors and the final BUY behavior. In other word, what kinds of behavior will bring to the buy behavior.

+ We predic whether the buyer will buy stuff from taobao or not.

+ In the end, all of the outcome from above will be visualized.

## Step

![image](https://github.com/ACFightOn/CSCI596-Final-Project/blob/main/Schema.jpg)

1. Get the dataset, preprocess it and load it into HDFS
2. Using Hive to further process the dataset
3. Using Spark to predic returned customer.
4. Using JavaWeb to achieve visulization.

## Environment
+ Linux
+ Hadoop
+ MySQL
+ Sqoop
+ Hive
+ Spark
+ Java 1.8
+ Python3

## Final Visualization
### the catigories of buy behaviors
![image](https://github.com/ACFightOn/CSCI596-Final-Project/blob/main/buyier.PNG)
### male vs female
![image](https://github.com/ACFightOn/CSCI596-Final-Project/blob/main/vs.PNG)
### male and female from different age
![image](https://github.com/ACFightOn/CSCI596-Final-Project/blob/main/age.PNG)
### top goods
![image](https://github.com/ACFightOn/CSCI596-Final-Project/blob/main/goods.PNG)
### sales from different province
![image](https://github.com/ACFightOn/CSCI596-Final-Project/blob/main/province.PNG)
