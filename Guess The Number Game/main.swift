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
print(randomNum)

var gameNotOver = true
var guess: Int?

while gameNotOver{
    var number = readLine()!
    guess = Int(number)
    
    if guess == randomNum {
        print("you guessed the number right GOOD JOB!")
        gameNotOver = false
    }
    if guess < randomNum{
        print("Your guess was too little guess again.")
    }
}

