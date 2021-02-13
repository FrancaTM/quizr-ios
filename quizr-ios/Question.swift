//
//  Question.swift
//  quizr-ios
//
//  Created by Tulio Marcos Franca on 13/02/21.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
