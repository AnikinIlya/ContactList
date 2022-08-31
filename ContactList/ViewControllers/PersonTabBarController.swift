//
//  TabBarController.swift
//  ContactList
//
//  Created by Anikin Ilya on 31.08.2022.
//

import UIKit

class PersonTabBarController: UITabBarController {

    //MARK: - Private Properties
    private var personList = Person.getPersonList()
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setValueForPersonList()
    }
    
    // MARK: - Private Methods
    private func setValueForPersonList() {
        guard let tabBarVC = self.viewControllers else { return }
        
        guard let navController = tabBarVC.first as? UINavigationController else { return }
        guard let mainVC = navController.topViewController as? MainPersonListViewController else { return }
        
        guard let secondNavController = tabBarVC.last as? UINavigationController else { return }
        guard let secondVC = secondNavController.topViewController as? SecondTableViewController else { return }
        
        mainVC.personList = personList
        secondVC.personList = personList
    }
}
