//
//  MainPersonListViewController.swift
//  ContactList
//
//  Created by Anikin Ilya on 31.08.2022.
//

import UIKit

class MainPersonListViewController: UITableViewController {

    // MARK: - Public Properties
    var personList: [Person]!
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)

        let person = personList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        
        content.text = person.fullName
        
        cell.contentConfiguration = content

        return cell
    }
    
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personDetails = segue.destination as? PersonDetailsViewController else { return }
        guard let index = tableView.indexPathForSelectedRow else { return }
        let person = personList[index.row]
        personDetails.person = person
    }

}
