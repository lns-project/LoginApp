//
//  UserMoreViewController.swift
//  LoginApp
//
//  Created by Динара Шарафутдинова on 11.01.2023.
//

import UIKit

class UserMoreViewController: UIViewController {
    
    @IBOutlet var firstPetImage: UIImageView!
    @IBOutlet var firstPetInfoTV: UITextView!
    
    @IBOutlet var secondPetImage: UIImageView!
    @IBOutlet var secondPetInfoTV: UITextView!
    
    @IBOutlet var thirdPetImage: UIImageView!
    @IBOutlet var thirdPetInfoTV: UITextView!
    
    private let user = UserManager().getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstPetInfoTV.backgroundColor = .clear
        firstPetInfoTV.textColor = .black
        firstPetInfoTV.text = user.pets[0].description
        firstPetImage.image = UIImage(named: user.pets[0].photo)

        secondPetInfoTV.backgroundColor = .clear
        secondPetInfoTV.textColor = .black
        secondPetInfoTV.text = user.pets[1].description
        secondPetImage.image = UIImage(named: user.pets[1].photo)
        
        thirdPetInfoTV.backgroundColor = .clear
        thirdPetInfoTV.textColor = .black
        thirdPetInfoTV.text = user.pets[2].description
        thirdPetImage.image = UIImage(named: user.pets[2].photo)
    }
}
