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
    
    lazy var menuButton: UIBarButtonItem = {
        let button = UIBarButtonItem(image: #imageLiteral(resourceName: "hamburger-icon"), style: .plain, target: self, action: #selector(toggleMenu))
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Take That Bus"
        
        navigationItem.leftBarButtonItem = menuButton
        
        
        view.backgroundColor = .white
        
        setupSearchController()
    }
    
    func setupSearchController() {
        navigationItem.searchController = searchController
        definesPresentationContext = true
    }
    
    @objc func toggleMenu() {
        
    }
}

