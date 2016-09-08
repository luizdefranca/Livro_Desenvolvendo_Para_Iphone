//
//  AppDelegate.swift
//  Carros
//
//  Created by LuizRamos on 01/09/16.
//  Copyright © 2016 LuizRamos. All rights reserved.
//

import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.window!.backgroundColor = UIColor.whiteColor()
        
        //Create de controllers
        
        let listaController = ListaCarrosViewController(nibName:"ListaCarrosViewController", bundle: nil)
        let sobreControle   = SobreViewController(nibName:"SobreViewController", bundle: nil)
        let nav1 = UINavigationController()
        let nav2 = UINavigationController()
        
        // Insert both view controllers into navigations controllers
        
        nav1 .pushViewController(listaController, animated: true)
        nav2 .pushViewController(sobreControle, animated: true)
        
        //Create the TabBar
        
        let tabBarController = UITabBarController()
        
        tabBarController .viewControllers = [nav1, nav2]
        nav1.tabBarItem.title = "Carros"
        nav1.tabBarItem .image = UIImage(named: "tab_carros.png")
        
        nav2.tabBarItem.title = "Sobre"
        nav2.tabBarItem .image = UIImage(named: "tab_sobre.png")
        
        //Setup the UITabBarController as main view controller
        
        self .window! .rootViewController = tabBarController
        
        // Becoming the visible view
        self.window!.makeKeyAndVisible()
        
        
        
        return true
    }

    


}

