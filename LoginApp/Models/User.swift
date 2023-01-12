//
//  User.swift
//  LoginApp
//
//  Created by Динара Шарафутдинова on 10.01.2023.
//

struct Person {
    let name: String
    let photo: String
    let login: String
    let password: String
    let pet: [Pets]
}

struct Pets {
    let title: String
    let photo: String
    let type: PetType
}

enum PetType: String {
    case firstPet = "Акиша"
    case secondPet = "Йося"
    case thirdPet = "Ори"
    
    var definition: String {
        switch self {
        case .firstPet:
            return "Акиша была подарена на день рождения в 2013 году, сейчас ей 9,5 лет. Она самостоятельная дама, которая предпочитает отдыхать и не любит когда её беспокоят."
        case .secondPet:
            return "Йося выбрал нас сам. 1,5 года назад был принесен в коробке вместе с другими котомалышами и оставлен в подъезде нашего дома. Однажды, забежал к нам в квартиры и остаётся по текущий день. Нежный, ласковый, добрый и очень кусачий кот. Помогает присматривать за Ориком, с Акишой не ладят"
        case .thirdPet:
            return "Орик. Искали и выбирали сами среди других ориенталов. С нами всего 1 месяц и вот, что мы о нём знаем: 1. Очень юркий. 2. Очень громкий (тут имя отражает его лучше всего). 3. Очень горячий. 4. Всегда готов подкрепиться. Большой добряк, ладит со всеми, младший друг Йоси, с Акишой пытается наладить связь - у него есть все шансы."
        }
    }
}