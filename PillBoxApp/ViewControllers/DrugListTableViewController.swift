//
//  DrugListTableViewController.swift
//  PillBoxApp
//
//  Created by jopootrivatel on 30.10.2022.
//

import UIKit

class DrugListTableViewController: UITableViewController {
    private var drugList = Drug.getDrugList()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 50
        navigationItem.leftBarButtonItem = editButtonItem

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        drugList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let drug = drugList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = drug.drugName
        content.secondaryText = drug.dosage
//        content.image = UIImage(named: drug.drugName)
//        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - UITableViewDelegate
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        .none
    }
    
    override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        false
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let currentDrug = drugList.remove(at: sourceIndexPath.row)
        drugList.insert(currentDrug, at: destinationIndexPath.row)
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let infoVC = segue.destination as? DrugInfoViewController
        infoVC?.drug = sender as? Drug
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        infoVC?.drug = drugList[indexPath.row]
    }

//    override func unwind(for unwindSegue: UIStoryboardSegue, towards subsequentVC: UIViewController) {
//        dismiss(animated: true)
//    }

}
