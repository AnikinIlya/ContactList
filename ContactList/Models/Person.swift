//
//  Person.swift
//  ContactList
//
//  Created by Anikin Ilya on 31.08.2022.
//

import Foundation

struct Person {
    let firstName: String
    let lastdName: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(firstName) \(lastdName)"
    }
}

extension Person {
    static func getPersonList() -> [Person] {
        var personsList = [Person]()
        let dataManager = DataManager()
        
        for index in 0...dataManager.firstNames.count - 1 {
            personsList.append(Person(
                firstName: dataManager.firstNames[index],
                lastdName: dataManager.lastNames[index],
                email: dataManager.emails[index],
                phoneNumber: dataManager.phoneNumbers[index]
            ))
        }
        
        return personsList
    }
}
