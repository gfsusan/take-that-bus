//
//  ViewController.swift
//  TakeThatBus
//
//  Created by Susan Kim on 13/08/2019.
//  Copyright © 2019 Susan Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let searchController: UISearchController = {
        let resultController = ResultController()
        let sc = UISearchController(searchResultsController: resultController)
        sc.searchResultsUpdater = resultController
        sc.obscuresBackgroundDuringPresentation = false
        sc.searchBar.placeholder = "Where do you want to go?"
        return sc
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupSearchController()
    }
    
    func setupSearchController() {
        navigationItem.searchController = searchController
        definesPresentationContext = true
    }
    
}

