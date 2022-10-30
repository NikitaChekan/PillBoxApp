//
//  Drug.swift
//  PillBoxApp
//
//  Created by jopootrivatel on 30.10.2022.
//

import Foundation

struct Drug {
    let drugName: String
    let description: String
    let dosage: String
    
    var title: String {
        "\(drugName) - \(dosage)"
    }
    
    static func getDrugList() -> [Drug] {
        [
           Drug(
            drugName: "Xanax",
            description: "Ксанакс - это рецептурный препарат, используемый для лечения симптомов тревоги, панического расстройства и тревоги, связанной с депрессией. Ксанакс может использоваться самостоятельно или вместе с другими лекарствами. Ксанакс относится к классу препаратов, называемых противотревожными средствами, анксиолитиками, бензодиазепинами.",
            dosage: "25 миллиграмм")
           
        ]
    }
}
