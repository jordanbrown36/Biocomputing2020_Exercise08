#Challenge 1: Generate a line graph depicting the cumulative score for each time as a function of time in the game
#load data
setwd("~/Documents/biocomputing/Exercises/Biocomputing2020_Exercise08/")
scores <- read.csv("UWvMSU_1-22-13.txt", header = TRUE,stringsAsFactors = FALSE, sep = "")
#generate a dataframe with a cumulative score for each team
#whenever either team scores

#create separate output variables for each team
WisconsinSum <- numeric(length=50)
MichiganSum<-numeric(length=50)


#start for loop
for(i in 1:nrow(scores)){
  if(i==1){
    if(scores$team[i]=="UW"){
      WisconsinSum[i]<-scores$score[i]
    }else{
      MichiganSum[i]<-scores$score[i]
    }
  }
  else{
   if(scores$team[i]=="UW"){
    WisconsinSum[i]<- WisconsinSum[i - 1] + scores$score[i]
    MichiganSum[i]<-MichiganSum[i-1]
    }else{
      MichiganSum[i]<-MichiganSum[i-1] + scores$score[i]
      WisconsinSum[i]<-WisconsinSum[i-1]
    }
  }
}

#create variable for time
time<-scores$time
#graph with time(x) and scores (y)
plot(time,MichiganSum,"l",ylab="Scores")
#Add line for Wisconsin scores 
lines(time,WisconsinSum)






