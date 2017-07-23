//
//  AppDelegate.swift
//  Optik
//
//  Created by Htin Linn on 05/14/2016.
//  Copyright (c) 2016 Prolific Interactive. All rights reserved.
//

import UIKit
import Optik


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
            let url1 = URL(string: "https://upload.wikimedia.org/wikipedia/commons/6/6a/Caesio_teres_in_Fiji_by_Nick_Hobgood.jpg")
            let url2 = URL(string: "https://upload.wikimedia.org/wikipedia/commons/9/9b/Croissant%2C_cross_section.jpg")
            let url3 = URL(string: "https://upload.wikimedia.org/wikipedia/en/9/9d/Link_%28Hyrule_Historia%29.png")
            let url4 = URL(string: "https://upload.wikimedia.org/wikipedia/en/3/34/RickAstleyNeverGonnaGiveYouUp7InchSingleCover.jpg")
        
        let urls = [url1!, url2!, url3!, url4!]
        
        let imageDownloader = AlamofireImageDownloader()
        window = UIWindow()
        window?.rootViewController = Optik.imageViewer(withURLs: urls, imageDownloader: imageDownloader)
        
        window?.makeKeyAndVisible()
        
        return true
    }

}

