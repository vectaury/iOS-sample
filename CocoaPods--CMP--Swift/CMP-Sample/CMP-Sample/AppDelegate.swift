//
//  AppDelegate.swift
//  CMP-Sample
//
//  Created by Pernic on 30/07/2018.
//  Copyright © 2018 Vectaury. All rights reserved.
//

import UIKit
import VectauryCMP

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        let apiKey = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
        let language = "fr"
        let vendorUsed = IndexSet([1,2,368,128,153]) // Use a IndexSet of vendors id
        let color : UIColor = .red
        let logo : UIImage? = UIImage(named: "logo.jpg") // need to be compatible with UIImageJPEGRepresentation
        let privacyPolicy: String = "https://www.vectaury.io/en/personal-data"
        let subjectToGDPR: Bool = true
        let title: String = "Le respect de votre vie privée est notre priorité."
        let content: String = "Afin d'améliorer notre application et vous adresser du contenu et/ou des offres commerciales personnalisées, nos partenaires et nous-mêmes collectons vos données personnelles comme vos données de navigation ou votre position géographique. Cela nous permet également de vous offrir un accès gratuit à notre service et nous nous engageons à diffuser des publicités dont les formats sont non intrusifs. \n\nEn acceptant, vous consentez à ce que nos partenaires et nous-même puissions collecter et traiter vos données personnelles à des fins d'analyse et de publicité. \n\nVous pouvez changer vos paramètres de confidentialité à tout moment depuis les réglages de l’application."
        
        let conf = CMPConfiguration(apiKey: apiKey, language: language, logo: logo, primaryColor: color, subjectToGDPR: subjectToGDPR, filter: vendorUsed, privacyPolicy: privacyPolicy, title: title, content: content)
        
        VectauryCMP.initWithConf(conf)
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

