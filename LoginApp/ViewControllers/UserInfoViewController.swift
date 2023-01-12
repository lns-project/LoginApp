//
//  PersonViewController.swift
//  LoginApp
//
//  Created by Динара Шарафутдинова on 09.01.2023.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    private let user = UserManager().getUser()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.destination is UserMoreViewController else { return }
    }
}
