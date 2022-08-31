//
//  TabBarController.swift
//  ContactList
//
//  Created by Anikin Ilya on 31.08.2022.
//

import UIKit

class PersonTabBarController: UITabBarController {

    private var personList = Person.getPersonList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let navController = self.viewControllers![0] as? UINavigationController else { return }
        guard let mainVC = navController.topViewController as? MainPersonListViewController else { return }
        
        guard let secondNavController = self.viewControllers![1] as? UINavigationController else { return }
        guard let secondVC = secondNavController.topViewController as? SecondTableViewController else { return }
        
        mainVC.personList = personList
        secondVC.personList = personList
    }
}
