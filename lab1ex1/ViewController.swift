//
//  ViewController.swift
//  lab1ex1
//
//  Created by Jacek Gawlyta on 05/06/2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var termsSwitch: UISwitch!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func createAccountTapped(_ sender: UIButton) {
        let email = emailTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        let confirmPassword = confirmPasswordTextField.text ?? ""
        let isTermsAccepted = termsSwitch.isOn
        
        if email.isEmpty || password.isEmpty || confirmPassword.isEmpty {
            resultLabel.text = "Wymagane jest podanie adresu email, hasła oraz potwierdzenie hasła"
        } else if password != confirmPassword {
            resultLabel.text = "Podane hasła nie są jednakowe"
        } else if !isTermsAccepted {
            resultLabel.text = "Wymagana jest akceptacja regulaminu"
        } else {
            resultLabel.text = "Gratulacje! Twoje konto zostało utworzone"
        }
    }
}

