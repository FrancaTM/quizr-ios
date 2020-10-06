//
//  ViewController.swift
//  quizr-ios
//
//  Created by Tulio Marcos Franca on 05/10/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var progressBar: UIProgressView!
    @IBOutlet var trueButton: UIButton!
    @IBOutlet var falseButton: UIButton!

    let quiz = [
        ["Four + Two is equal to Six", "True"],
        ["Five - Three is greater than One", "True"],
        ["Three + Eight is less than Ten", "False"]
    ]
    var questionNumber = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI(questionNumber: questionNumber)
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber][1]

        if userAnswer == actualAnswer {
            print("RIGHT")
        } else {
            print("WRONG")
        }

        if questionNumber+1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }

        updateUI(questionNumber: questionNumber)
    }

    func updateUI(questionNumber: Int) {
        questionLabel.text = quiz[questionNumber][0]
    }
}
