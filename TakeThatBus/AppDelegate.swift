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
        // Configure ODSay API
        ODsayService.sharedInst()?.setApiKey("P3Nni0/I1nU09xERQmjSSw")
        ODsayService.sharedInst()?.setTimeout(5000)
        
//        ODsayService.sharedInst()?.requestSearchPubTransPath("126.926493082645", sy: "37.6134436427887", ex: "127.126936754911", ey: "37.5004198786564", opt: 0, searchType: 0, searchPathType: 0, responseBlock: { (response, result) in
//            if response == 200 {
//                print("success")
//                print(result?.description)
//            } else {
//                print("failure")
//            }
//        })
        
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

