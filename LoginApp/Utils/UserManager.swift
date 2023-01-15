//
//  UserManager.swift
//  LoginApp
//
//  Created by Динара Шарафутдинова on 10.01.2023.
//

import Foundation

class UserManager {
    
    private let user = Person(name: "Динара",
                              surname: "Шарафутдинова",
                              photo: "Dinara",
                              login: "1",
                              password: "1",
                              pets: [
                                Pet(title: "Акиша", photo: "Akisha", description: "Акиша была подарена на день рождения в 2013 году, сейчас ей 9,5 лет. Она самостоятельная дама, которая предпочитает отдыхать и не любит когда её беспокоят."),
                                Pet(title: "Йося", photo: "Yosya", description: "Йося выбрал нас сам. 1,5 года назад был оставлен в подъезде нашего дома. Нежный, ласковый, добрый и очень кусачий кот. Помогает присматривать за Ориком."),
                                Pet(title: "Ори", photo: "Ori", description: "Орик. Искали и выбирали сами среди других ориенталов. С нами всего 1 месяц, очень юркий, очень громкий, большой добряк и ладит со всеми.")
                                ]
                              )
    
    func getUser() -> Person {
        return user
    }
}
