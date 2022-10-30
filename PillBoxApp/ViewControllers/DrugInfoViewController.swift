//
//  DrugInfoViewController.swift
//  PillBoxApp
//
//  Created by Vasya Smetankin and Nikita Chekan on 30.10.2022.
//

import UIKit

class DrugInfoViewController: UIViewController {

    
    @IBOutlet var photoImageView: UIImageView!
    @IBOutlet var descriptionLabel: UILabel!
    
    var drug: Drug!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = drug.drugName
        photoImageView.image = UIImage(named: drug.drugName)
        descriptionLabel.text = drug.description
    }

}
