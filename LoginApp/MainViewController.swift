//
//  ViewController.swift
//  LoginApp
//
//  Created by Динара Шарафутдинова on 06.01.2023.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var userPasswordTF: UITextField!
    
    private let currentUserName = "User"
    private let currentPassword = "Password"
    
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let loginVC = segue.destination as? WelcomeViewController, let text = userNameTF.text {
            loginVC.userName = text
        }
    }

    @IBAction func forgotNamePressed(_ sender: UIButton!) {
        showAlert(title: "Oops!", message: "Your name is \(currentUserName) 😉")
    }
    
    @IBAction func forgotPasswordPressed(_ sender: UIButton) {
        showAlert(title: "Oops!", message: "Your password is \(currentPassword) 😉")
    }
    
    @IBAction func logInPressed(_ sender: UIButton) {
        guard userNameTF.text == currentUserName, userPasswordTF.text == currentPassword else {
            showAlert(title: "Invalid login or password",
                      message: "Please, enter correct login and password")
            userPasswordTF.text = ""
            return
        }
        performSegue(withIdentifier: "secondVCSegue", sender: sender)
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        guard segue.source is WelcomeViewController else { return }
        userNameTF.text = ""
        userPasswordTF.text = ""
    }
}


// MARK: - UIAlertController
extension MainViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
