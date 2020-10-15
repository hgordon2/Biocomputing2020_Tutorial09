#Exercise 7
#Hannah Gordon

#Question 1
#Write R code that replicates the functionality of the head function we used in Linux. Your code should
#define a variable with the file to return lines from and a variable representing the number of lines to be
#returned from the top of the indicated file. The selected file content should be printed to the terminal
#in R.

#set working directory
setwd("/Users/Public/Documents/Biocomputing2020_Tutorial09")

#define a variable with the file
wagesvar <- read.table(file='wages.csv',sep=',',header=TRUE,stringsAsFactors = FALSE)

#variable for number of lines (integer can be changed based on how many lines you want returned)
numlines <- 1

#Use the head command with the file variable and the variable for number of lines
#Note: the output of this function is the header line and the first line of data
head(wagesvar,n=numlines)

#Question 2
# Load the data contained in the provided 'iris.csv' file and write R code to do the following things
#. print the last 2 rows in the last 2 columns to the R terminal
#. get the number of observations for each species included in the data set
#. get rows with Sepal.Width > 3.5
#. write the data for the species setosa to a comma-delimited file names 'setosa.csv'
#. calculate the mean, minimum, and maximum of Petal.Length for observations from virginica

#Step 1: load iris.csv
iristable=read.csv(file="iris.csv", header=TRUE, stringsAsFactors=FALSE)

#Step 2: print the last 2 rows in the last 2 columns
iristable[149:150,4:5]

#Step 3: get the number of observations for each species
setosa=iristable[iristable$Species=="setosa",]
nrow(setosa)
versicolor=iristable[iristable$Species=="versicolor",]
nrow(versicolor)
virginica=iristable[iristable$Species=="virginica",]
nrow(virginica)

#Step 4: get rows with sepal width > 3.5
sepalWidth=iristable[iristable$Sepal.Width>3.5,]
sepalWidth

#Step 5: write the data for setosa in a .csv file
#I am using the setosa table I created in step 3
write.table(setosa,"setosa.csv",row.names=FALSE,sep=",")

#Step 6: calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
#I am using the virginica table I created in step 3
mean(virginica$Petal.Length)
min(virginica$Petal.Length)
max(virginica$Petal.Length)
