//
//  ResultController.swift
//  TakeThatBus
//
//  Created by Susan Kim on 13/08/2019.
//  Copyright © 2019 Susan Kim. All rights reserved.
//

import UIKit
import LBTATools

class ResultController: UIViewController, UISearchResultsUpdating {
    
    let label = UILabel(text: "Hello")
    
    override func viewDidLoad() {
        
        view.stack(UIView().withHeight(200),
                   label.withHeight(200),
                   UIView())
        
        view.backgroundColor = .orange
        
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        print("dlksfjklds")
    }
}
