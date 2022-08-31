//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by Anikin Ilya on 31.08.2022.
//

import UIKit

class PersonDetailsViewController: UIViewController {

    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        phoneNumberLabel.text = "Phone : \(person.phoneNumber)"
        emailLabel.text = "Email: \(person.email)"
        title = person.fullName
    }
}
