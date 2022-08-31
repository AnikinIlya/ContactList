//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by Anikin Ilya on 31.08.2022.
//

import UIKit

class PersonDetailsViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    // MARK: - Public Properties
    var person: Person!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        phoneNumberLabel.text = "Phone : \(person.phoneNumber)"
        emailLabel.text = "Email: \(person.email)"
        title = person.fullName
    }
}
