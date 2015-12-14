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
      
      // Create your Pages before calling the super viewDidLoad
      let firstPage = OnboardingContentViewController(title: "Page Title", body: "Page body goes here.", image: UIImage(named: "icon"), buttonText: "Text For Button") { () -> Void in
         print("Hello first page")
      }
      
      // Append your pages
      viewControllers = [firstPage]
      
      // Call the super viewDidLoad
      super.viewDidLoad()
      
   }
   
   override func setCurrentPage(currentPage: OnboardingContentViewController!) {
      super.setCurrentPage(currentPage)
      
      // Customize the current page
      currentPage.view.backgroundColor = UIColor.blackColor()
      
   }
   
}

