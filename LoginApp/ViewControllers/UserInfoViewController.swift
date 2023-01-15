//
//  PersonViewController.swift
//  LoginApp
//
//  Created by Динара Шарафутдинова on 09.01.2023.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    @IBOutlet var userMainImage: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var petsNameLabel: UILabel!
    
    private let user = UserManager().getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        userMainImage.image = UIImage(named: user.photo)
        nameLabel.text = user.name
        surnameLabel.text = user.surname
        petsNameLabel.text = user.pets.map { $0.title }.joined(separator: ", ")

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.destination is UserMoreViewController else { return }
    }
}
