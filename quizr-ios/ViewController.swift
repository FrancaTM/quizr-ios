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
        "Four + Two is equal to Six",
        "Five - Three is greater than One",
        "Three + Eight is less than Ten"
    ]
    var questionNumber = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI(questionNumber: questionNumber)
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        questionNumber += 1
        updateUI(questionNumber: questionNumber)
    }

    func updateUI(questionNumber: Int) {
        questionLabel.text = quiz[questionNumber]
    }
}
