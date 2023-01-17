//
//  Question.swift
//  Country Flag Game
//
//  Created by Leo Lai on 1/17/23.
//

import Foundation

struct Question: Identifiable {
    var id = UUID()
    var correctAnswer: Answer
    var incorrectAnswers: [Answer]
}

struct Answer: Identifiable {
    var id = UUID()
    var text: String
    var isCorrect: Bool
}

 
