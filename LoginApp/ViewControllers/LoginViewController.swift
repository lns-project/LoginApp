//
//  ViewController.swift
//  LoginApp
//
//  Created by Динара Шарафутдинова on 06.01.2023.
//

import UIKit

// MARK: ViewController

class LoginViewController: UIViewController {
    
    // MARK: Outlets
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var userPasswordTF: UITextField!
    
    // MARK: Private properties
    
    private let user = UserManager().getUser()
    
    // MARK: Methods
    
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let loginVC = viewController as? WelcomeViewController, let text = userNameTF.text {
                loginVC.userName = text
            } else if let navigationVC = viewController as? UINavigationController {
                guard navigationVC.topViewController is UserInfoViewController else { return }
            }
        }
    }
    
    @IBAction func forgotNamePressed(_ sender: UIButton!) {
        showAlert(title: "Oops!", message: "Your name is \(user.login) 😉")
    }
    
    @IBAction func forgotPasswordPressed(_ sender: UIButton) {
        showAlert(title: "Oops!", message: "Your password is \(user.password) 😉")
    }
    
    @IBAction func logInPressed(_ sender: UIButton) {
        guard userNameTF.text == user.login, userPasswordTF.text == user.password else {
            showAlert(title: "Invalid login or password",
                      message: "Please, enter correct login and password")
            userPasswordTF.text = ""
            return
        }
        performSegue(withIdentifier: "tabbarSegue", sender: sender)

    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        userNameTF.text = ""
        userPasswordTF.text = ""
    }
    
    // MARK: Private methods
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
