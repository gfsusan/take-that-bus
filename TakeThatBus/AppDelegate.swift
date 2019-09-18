//
//  AppDelegate.swift
//  TakeThatBus
//
//  Created by Susan Kim on 13/08/2019.
//  Copyright © 2019 Susan Kim. All rights reserved.
//

import UIKit
import GoogleMaps
import GooglePlaces

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Configure Google Maps API
        GMSServices.provideAPIKey("AIzaSyAXKJhRowcERTt1kNqvN8hgy5KVPznC_zQ")
        GMSPlacesClient.provideAPIKey("AIzaSyAXKJhRowcERTt1kNqvN8hgy5KVPznC_zQ")
        
        let viewController = ViewController()
        let navigationController = UINavigationController(rootViewController: viewController)
        
        window = UIWindow()
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()

        return true
    }


}

