//
//  ViewController.swift
//  UIKitCourse
//
//  Created by Lera Savchenko on 29.01.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var textField: UITextField!
    @IBOutlet var doneButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.layer.cornerRadius = 10
        doneButton.layer.cornerRadius = 10
    }
    
    private func presentAlert() {
        let alert = UIAlertController(title: "Wrong format", message: "Please, enter your name", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }

    @IBAction func buttonTapped() {
        guard textField.text?.isEmpty == false else { return }
        
        if let _ = Double(textField.text!) {
            presentAlert()
        } else {
            nameLabel.text = textField.text
        }
        
    }
    
}

