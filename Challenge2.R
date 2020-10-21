#challenge 2: Write a game called "guess my number"
#create a function that will generate a random number between 1:100
#and ask user to guess(input)

#initialize game by typing the function "GuessingGame()" in the command line
#No need to specify argument in the beginning, user input is asked within the loop
#rules: can only guess 10 times 

GuessingGame<-function(){
  Number <- sample(1:100,1)
  guess <- 0
  while(guess!=Number){
  guess <- readline("Guess a number from 1-100 ")
    if (guess == Number){
      print("Ayyeee you got it!")
    }else if (guess < Number){
      print("Higher!")
    }else if(guess > Number) {
      print("Lower!")
    }
  }
}
