#Clear environment
rm(list=ls())

#Clear plots
dev.off()

#Set working directory
setwd("C:\\Users\\Owner\\Documents\\Tommy\\Lectures\\Lecture 3")

#Slide 8
X <- 3			#assign X the value 3
X = 3			#same as previous line
vector = c(1, 2, 3, 4)	#define a vector
vector2 = vector*2	#scale the vector
Y = max(vector2)	#assign m to the max of vector 2 (8)
Z = "This is a string"	#assign Z to a string
Z == Y

#Slide 9
#View all built in datasets in R
data()
#Read in data from built in dataset
data(mtcars)
#The dataset will appear as a dataframe once it's used
summary(mtcars)

#Slide 11
#Read csv file
houses=read.csv("houses.csv")
#Only read in first 100 rows
houses2=read.csv("houses.csv",nrows=100)
#Read txt file
music=read.table("music.txt",sep="")
#Only read in first 100 rows
music2=read.table("music.txt",sep="",nrows=100)

#Slide 12
#Install xlsx package if not already installed
if(!require("xlsx")){install.packages("xlsx")}
#Load package
library(xlsx)
#Read xlsx file, 2nd argument is sheet number
housesFromExcel=read.xlsx2("housesExcel.xlsx",1)

#Slide 13
#Read csv from url
fires=read.csv(url("http://archive.ics.uci.edu/ml/machine-learning-databases/forest-fires/forestfires.csv"))
#Only read in the first 100 rows
fires2=read.csv(url("http://archive.ics.uci.edu/ml/machine-learning-databases/forest-fires/forestfires.csv"),nrows=100)

#Slide 20
#Install sqldf package if not already installed
if(!require("sqldf")){install.packages("sqldf")}
#Load package
library(sqldf)
sqldf("SELECT * FROM mtcars WHERE mpg > 20")

#Slide 21
#Subset on the read in statement
expensiveHouses = read.csv.sql("houses.csv",
                               sql="select * from file where SalePrice < 200000",
                               eol="\n")



#Clear environment
rm(list=ls())

#Clear plots
dev.off()

#Set working directory
setwd("")

###Setup###

#Slide 9
#Check which version of R you have
version

#Slide 10
#Install rJava and load. If there are issues and errors, you probably need to update Java.
if(!require("rJava")){install.packages("rJava")}
library("rJava")

###Getting Started###

#Slide 14
X <- 3			#assign X the value 3
X = 3			#same as previous line
vector = c(1, 2, 3, 4)	#define a vector
vector2 = vector*2	#scale the vector
Y = max(vector2)	#assign m to the max of vector 2 (8)
Z = "This is a string"	#assign Z to a string
Z == Y

###Importing Data###

#Slide 15
#View all built in datasets in R
data()
#Read in data from built in dataset
data(mtcars)
#The dataset will appear as a dataframe once it's used
#Summary provides the min, 1st quartile, mean, 3rd quartile, and max for every variable in the dataset
summary(mtcars)
#Get the names of all variables in the dataset
names(mtcars)
#Get a summary for just one variable
summary(mtcars$mpg)

#Slide 16
#First row
mtcars [ 1, ]
#Second column
mtcars [ , 2]
#Subset data into 2 new datasets based on mpg
EnvironmentalCars=mtcars[mtcars$mpg>20,]
notEnvironmentalCars=mtcars[mtcars$mpg<=20,]
#Compare horsepower for 2 subsets
summary(EnvironmentalCars$hp)
summary(notEnvironmentalCars$hp)

#Slide 19
#Read csv file
houses=read.csv("houses.csv")
#Only read in first 100 rows
houses2=read.csv("houses.csv",nrows=100)
#Read txt file
music=read.table("music.txt",sep="")
#Only read in first 100 rows
music2=read.table("music.txt",sep="",nrows=100)

#Slide 20
#########Exercise##########

#Slide 21
#Install xlsx package if not already installed
if(!require("xlsx")){install.packages("xlsx")}
#Load package
library(xlsx)
#Read xlsx file, 2nd argument is sheet number
housesFromExcel=read.xlsx2("housesExcel.xlsx",1)

#Slide 22
#Read csv from url
fires=read.csv(url("http://archive.ics.uci.edu/ml/machine-learning-databases/forest-fires/forestfires.csv"))
#Only read in the first 100 rows
fires2=read.csv(url("http://archive.ics.uci.edu/ml/machine-learning-databases/forest-fires/forestfires.csv"),nrows=100)

#Slide 30
#Install sqldf package if not already installed
if(!require("sqldf")){install.packages("sqldf")}
#Load package
library(sqldf)
sqldf("SELECT * FROM mtcars WHERE mpg > 20")

#Slide 31
#Subset on the read in statement
expensiveHouses = read.csv.sql("houses.csv",
                               sql="select * from file where SalePrice < 200000",
                               eol="\n")


#Slide 35
#Install packages
if(!require("Quandl")){install.packages("Quandl")}
library(Quandl)
#to use an API key
Quandl.api_key("P4H2wmsg4VzKvTLfUHzU")
#Pull Apple financial data
AppleData = Quandl("WIKI/AAPL")
#Pull Amazon financial data
AmazonData = Quandl("WIKI/AMZN")

#Slide 38
#Install packages and load into memory
if(!require('tidyr')){install.packages('tidyr')}
if(!require('stringr')){install.packages('stringr')}
if(!require('rvest')){install.packages('rvest')}
library('tidyr')
library('stringr')
library('rvest')
#Download html
url = 'http://espn.go.com/nfl/superbowl/history/winners'
webpage = read_html(url)
#Extract all of the tables from the html
sb_table = html_nodes(webpage, 'table')
#Convert to dataframe
sb = html_table(sb_table)[[1]]


#Clear environment
rm(list=ls())

#Clear plots
dev.off()

#Set working directory
setwd("C:\\Users\\Owner\\Documents\\Tommy\\Lectures\\Draft 1st Executive Fall18")

###Variable Types###

#Slide 44
#Define vectors of 4 variable types
#Numeric
a=c(2,4,6,8)
class(a)
#Character
b=c("Joe","Bob","Jim","Tom")
class(b)
#Logical
c=c(T,F,F,T)
class(c)
#Factor
d=factor(c("big","small","small","big"))
class(d)

#Slide 46
#Combine into dataframe
#The vectors all need to be the same length in order to do this.
df=data.frame(a,b,c,d)
glimpse(df)
#Use stringsAsFactors=F to read in strings as characters instead of factors.
df2=data.frame(a,b,c,d,stringsAsFactors=F)
glimpse(df2)

#Slide 47
#Change variable types
#Convert d to character
df2$d=as.character(df2$d)
glimpse(df2)
#Convert back to factor
df2$d=as.factor(df2$d)
glimpse(df2)

#Slide 48
#########Exercise##########

###Missing Values####

#Slide 50
#Define vector
x=c(1,2,NA,4)
#NAs will get in the way of normal operations
sum(x)
#Find NAs
is.na(x)
#Find number of NAs for a variable
sum(is.na(x))
y=c(2,2,3,4)
df=data.frame(x,y)
#Find number of NAs for a dataset
summary(df)

#Slide 52
colSums(df)
##1.Delete
#Subset to remove NAs
colSums(na.omit(df))
##2.Ignore
#Ignore NAs in calculation
colSums(df,na.rm=T)
##3.Replace
#Replace with average
df$x[is.na(df$x)]=mean(na.omit(df$x))
df$x
colSums(df)

#Slide 53
#########Exercise##########

###Performing Operations Across Variables and Across Datasets###

#Slide 55
#Across Variables
X=c(0.1,0.7,0.3,0.9)
HighLow=ifelse(X>0.5,"High","Low")
HighLow

#Slide 56
#Across Datasets
glimpse(df2)
df3=lapply(df2,function(x)as.character(x))
df3=data.frame(df3,stringsAsFactors = F)
glimpse(df3)

#Slide 57
#########Exercise##########
c