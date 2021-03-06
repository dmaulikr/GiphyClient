//
//  TabBarViewController.swift
//  GiphyClient
//
//  Created by Robin Mehta on 5/30/17.
//  Copyright © 2017 robin. All rights reserved.
//

import Foundation
import UIKit

class TabBarViewController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        let tabOne = UINavigationController(rootViewController: ViewController())
        let tabOneBarItem = UITabBarItem(title: "Browse", image: UIImage(named: "defaultImage.png"), selectedImage: UIImage(named: ""))

        tabOne.tabBarItem = tabOneBarItem

        let tabTwo = UINavigationController(rootViewController: TimelineViewController())
        let tabTwoBarItem = UITabBarItem(title: "Timeline", image: UIImage(named: "defaultImage.png"), selectedImage: UIImage(named: ""))

        tabOne.tabBarItem = tabOneBarItem
        tabTwo.tabBarItem = tabTwoBarItem

        self.viewControllers = [tabOne, tabTwo]
    }

    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
    }
}
