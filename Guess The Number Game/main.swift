//
//  main.swift
//  Guess The Number Game
//
//  Created by Alejandro Birrueta on 12/11/24.
//

import Foundation

print("Welcome to The Guess the Number Game!")
print("Guess a number between 1 and 100.")

var randomNum = Int.random(in: 1...100)

var gameNotOver = true
var guess: Int
var guessCount = 0

while gameNotOver{
    var number = readLine()!
    var maybeGuess = Int(number)
    if maybeGuess == nil {
        print("Thats not a number try again.")
    }
    else {
        guessCount = guessCount+1
        guess = maybeGuess!
        if guess == randomNum {
            print("you guessed the number right GOOD JOB!")
            print("You guessed "+String(guessCount)+" times to get it right.")
            gameNotOver = false
            
        }
        if guess < randomNum{
            print("Your guess is too little guess again.")
        }
        if guess > randomNum{
            print("Your guess is too big guess again.")
        
        }
    }
}


