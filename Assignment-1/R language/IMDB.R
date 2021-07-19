

library(plyr)
library(dplyr)
library(data.table)
library(lattice)
library(tidyverse)
library(plotly)
library(plotrix)
# ====================================== TASK-1 ==================================================#

mydata <- fread(file.choose())
#print first 5 rows using head()
print("The first 5 Rows are:")
head(mydata, n= 5)
print("##################################################")

# #1-a
print("### Task 1-a: Details of mydata dataframe are: \n")
str(mydata, list.len=ncol(mydata))

#1-b
print("#################################################3")
print("\n\n### Task 1-b: Number of rows and columns")
paste("Total number of columns are: ", ncol(mydata))
paste("Total number of rows are: ", nrow(mydata))
paste("Total dimension of data se is: ",dim(mydata))
print("###################################################")

#1-c
#Task 1-c: Print the descriptive detail of a column of the dataFrame
print ("\n\n>>Task 1-c: Descriptive details of Gross column are:")
result <- data.frame(mydata$gross)
print(str(result))


#1-D
#Unique Values
print("Print all the unique values of Genre")
unique(mydata$genre)
print("Print all the Freq values of Genre")
count(mydata,genre)
print("###################################################")
print("Print all the unique values of Rating ")
unique(mydata$rating)
print("Print all the Freq values of Rating ")
count(mydata,rating)
# ====================================== END TASK-1 ==================================================#

# ====================================== Aggregation & Filtering ==================================#
#TASK2-a
#Movie with the IMDB rating of 8.5
info <- subset(mydata, rating == 8.5)
print(info)

#Task 2-b
#Movie with the Rating of 8.5 released in year 1994
print("###################################################")
info <- subset(mydata, rating == 8.5 & year == "1994")
print(info)

#TASK2-c
#Highest number of Movies released in year 2004 = 30
print("###################################################")
info <- subset(mydata, year == "2004")
print(info)
#Second highest number of movies released in year 2009 = 29
print("###################################################")
info <- subset(mydata, year == "2009")
print(info)

# ====================================== END AGGREGATIONS & FILTERING ==================================#

# ====================================== VISUALIZATIONS ================================================#
#TASK3-A
#####VISUALIZATIONS
x <- mydata$name
y <- mydata$runtime
Rate <- table(mydata$runtime)

barplot(Rate, xlab = "Run Time(in minutes)", ylab = "No. of Movies", main = "Movie Length", col = "yellow", border = "blue")
plot(Rate, xlab = "Run Time(in minutes)", ylab = "No. of Movies", main = "Movie Length", col = "red", border = "blue")



#TASK3-B
######PIE CHART
info1 <- subset(mydata, year >= "1983" & year <= "2018")
print(info1)
p <- table(info1$year)
x <- table(info1$name)

fig <- plot_ly(type='pie', labels=info1$year, values=x ,textinfo='label+percent',textposition = 'inside',insidetextorientation='radial')
fig <- fig %>% layout(title = 'Numer of Movies from 1980 - 2018')
fig



# ====================================== END VISUALIZATIONS =============================================#

# ====================================== TASK-4  ========================================================#
#####Task4: maximum number of movies released were in year 2004 following by the year 2009
Year <- table(mydata$year)
print(Year)
class(Year)
#Q <- Year[order(year),]
Q <- table(mydata$year)
Q[order(-as.numeric(names(Q)))]
barplot(Q, xlab = "Year of Release", ylab = "No. of Movies", main = "Movie Release", col = "blue", border = "black")
# ====================================== END TASK-4  ========================================================#