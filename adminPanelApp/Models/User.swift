//
//  File.swift
//  adminPanelApp
//
//  Created by Karpinets Alexander on 17.07.2021.
//

struct UserLogin {
    let userNameLogin = "Alexander"
    let password = "Password"
}

struct Person {
    let firstName: String
    let lastName: String
    let gender: Gender
    let age: Int
    let location: Location
    let bioText: String
    let profileImage: String
    
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
    
    static func getPerson() -> [Person] {
        [
            Person(
                firstName: "Alexander",
                lastName: "Karpinets",
                gender: .male ,
                age: 36,
                location: .Russia,
                bioText: """
    Привет! Сегодня я отмечаю свое 36-летие, поэтому не успел сделать полностью домашку,
    и в целом не понял как передать данные, возможно не хватило времени чтобы разобраться самому...
    Я проживаю в небольшом поселке городского типа, где живет примерно 5000 человек.Рядом с нами находится космодром Плесецк.
    Работаю юристом в горнодобывающем предприятии. Хочу сменить профессию, стало скучно и чувствую что не развиваюсь дальше.
    У меня много разных хобби, помимо того, что в настоящее время я изучаю с вами программирование,
    я люблю фотографировать, путешествовать, иногда пишу музыку и еще много всего разного.
    """,
                profileImage: "profile_image"),
            
            Person(firstName: "Vlad",
                   lastName: "Polichuk",
                   gender: .male,
                   age: 24, location: .Ukraine,
                   bioText: "Some text",
                   profileImage: "profile_image"),
            
            Person(firstName: "Sofie",
                   lastName: "Keningem",
                   gender: .female,
                   age: 43, location: .UK,
                   bioText: "Some text",
                   profileImage: "profile_image")
        ]
    }
}
