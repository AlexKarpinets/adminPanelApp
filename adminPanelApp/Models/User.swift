//
//  File.swift
//  adminPanelApp
//
//  Created by Karpinets Alexander on 17.07.2021.
//

struct UserLogin {
    let userNameLogin: String
    let password: String
}

struct Person {
    let firstName: String
    let lastName: String
    let gender: Gender
    let age: Int
    let location: Location
    let bioText: String
}

enum Gender {
    case male
    case female
}

enum Location {
    case Russia
    case Germany
    case Ukraine
    case USA
    case UK
}

let users: [Person] = {
    let alexUser = Person(firstName: "Alexander", lastName: "Karpinets",
                          gender: .male , age: 36, location: .Russia,
                          bioText: """
Привет! Сегодня я отмечаю свое 36-летие, поэтому не успел сделать полностью домашку.
Я из небольшого поселка, где живет примерно 5000 человек.Рядом с нами находится космодром Плесецк.
У меня много разных хобби, помимо того, что в настоящее время я изучаю программирование,
я люблю фотографировать, путешествовать, иногда пишу музыку и еще много всего разного.
""")
    let vladUser = Person(firstName: "Vlad", lastName: "Polichuk",
                          gender: .male, age: 24, location: .Ukraine,
                          bioText: "Some text")
    let sofieUser = Person(firstName: "Sofie", lastName: "Keningem",
                           gender: .female, age: 43, location: .UK,
                           bioText: "Some text")
    return[alexUser, vladUser, sofieUser] }()
