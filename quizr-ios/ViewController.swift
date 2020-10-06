//
//  ViewController.swift
//  quizr-ios
//
//  Created by Tulio Marcos Franca on 05/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionLabel.text = "Four + Two is equal to Six"
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
    }
    
}

