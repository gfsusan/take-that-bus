//
//  ViewController.swift
//  TakeThatBus
//
//  Created by Susan Kim on 13/08/2019.
//  Copyright © 2019 Susan Kim. All rights reserved.
//

import UIKit
import GoogleMaps

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
    
    override func loadView() {
        let camera = GMSCameraPosition(latitude: -33.86, longitude: 151.20, zoom: 6.0)
        let mapView = GMSMapView(frame: .zero, camera: camera)
        view = mapView
        
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
        marker.title = "Sydney"
        marker.snippet = "Australia"
        marker.map = mapView
    }
    
    func setupSearchController() {
        navigationItem.searchController = searchController
        definesPresentationContext = true
    }
    
    @objc func toggleMenu() {
        
    }
}

