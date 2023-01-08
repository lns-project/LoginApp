//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Динара Шарафутдинова on 07.01.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var greetingsIcon: UITextField!
    @IBOutlet var greetingUserTF: UITextField!
    
    var userName: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        setGradientBackground()
        greetingUserTF.text = "Welcome, \(userName ?? "")!"
        greetingsIcon.text = "👋"
    }
    
    private func setGradientBackground() {
        let colorTop =  UIColor(red: 192.0/255.0, green: 129.0/255.0, blue: 143.0/255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 136.0/255.0, green: 154.0/255.0, blue: 219.0/255.0, alpha: 1.0).cgColor
                    
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
                
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
}
