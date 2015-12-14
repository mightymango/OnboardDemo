//
//  ViewController.swift
//  OnboardDemo
//
//  Created by Salim Ive on 12/14/15.
//  Copyright © 2015 Braksa Salim. All rights reserved.
//

import UIKit
import Onboard

class ViewController: OnboardingViewController {

   override func viewDidLoad() {
      
      // Create & Customzie your Pages before calling the super viewDidLoad
      let firstPage = OnboardingContentViewController(title: "Page 1", body: "Page body goes here.", image: UIImage(named: "icon"), buttonText: "Text For Button 1") { () -> Void in
         self.moveNextPage()
         print("Hello first page")
      }
      firstPage.view.backgroundColor = UIColor.blackColor()
      
      let secondPage = OnboardingContentViewController(title: "Page 2", body: "Page body goes here.", image: UIImage(named: "icon"), buttonText: "Text For Button 2") { () -> Void in
         print("Hello Second page")
      }
      secondPage.view.backgroundColor = UIColor.blackColor()
      
      // Append your pages
      viewControllers = [firstPage, secondPage]
      
      // Call the super viewDidLoad
      super.viewDidLoad()
      
   }

}

