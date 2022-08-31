//
//  DataManager.swift
//  ContactList
//
//  Created by Anikin Ilya on 31.08.2022.
//

import Foundation

class DataManager {
    let firstNames = ["John", "Sharon",
                      "Aaron", "Steven",
                      "Nicolas", "Ted",
                      "Bruce", "Carl"].shuffled()
    
    let lastNames = ["Murphy", "Jankin",
                     "Black", "Butler",
                     "Smith", "Williams",
                     "Robertson", "Isaacson"].shuffled()
    
    let emails = ["js@gmail.com", "lk@gmail.com",
                  "llll@gmail.com", "zx@gmail.com",
                  "qsq@gmail.com", "me@gmail.com",
                  "oij@gmail.com", "hhh@gmail.com", ].shuffled()
    
    let phoneNumbers = ["111-111", "222-222",
                        "333-333", "444-444",
                        "555-555", "666-666",
                        "777-777", "888-888"].shuffled()
}
