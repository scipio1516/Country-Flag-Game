//
//  Data.swift
//  Country Flag Game
//
//  Created by Leo Lai on 1/18/23.
//

import Foundation

class Data: ObservableObject {
    
    //20 countries
    private var countries = ["Angola", "Austria", "China", "England", "Estonia", "France", "Germany", "Greece", "India", "Israel", "Italy", "Norway", "Pakistan", "Peru", "Saudi Arabia", "South Africa", "Spain", "Sweden", "Ukraine", "United States"]
    @Published private(set) var questions = [
 
        Question(correctAnswer:
                Answer(text: "England", isCorrect: true),
              incorrectAnswers: [
                Answer(text: "Ireland", isCorrect: false),
                Answer(text: "Iceland", isCorrect: false),
                Answer(text: "South Africa", isCorrect: false)
              ])
        ,
 
        Question(correctAnswer:
                Answer(text: "France", isCorrect: true),
           incorrectAnswers: [
                Answer(text: "Spain", isCorrect: false),
                Answer(text: "Italy", isCorrect: false),
                Answer(text: "Germany", isCorrect: false)
           ])
        ,
 
        Question(correctAnswer:
                Answer(text: "Germany", isCorrect: true),
           incorrectAnswers: [
                Answer(text: "Austria", isCorrect: true),
                Answer(text: "Italy", isCorrect: false),
                Answer(text: "Czech Republic", isCorrect: false)
           ])
 
    ]
    
    init() {
        var count = 0
        while(count < 22) {
            addQuestion()
            count += 1
        }
        
    }
    
   func addQuestion() {
       let correctChoice = Answer(text: countries[Int.random(in: 0..<20)], isCorrect: true)
       var wrongChoices = [Answer(text: "", isCorrect: false), Answer(text: "", isCorrect: false), Answer(text: "", isCorrect: false)]
       
       var counter = 0
       while(counter < 3) {
           repeat {
               wrongChoices[counter].text = countries[Int.random(in: 0..<20)]
           } while(wrongChoices[counter].text == correctChoice.text)
           counter += 1
       }
        
        questions.append(Question(correctAnswer: correctChoice, incorrectAnswers: wrongChoices))
    }
    
}
