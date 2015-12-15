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
   
   override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
      super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
   }
   
   required init?(coder aDecoder: NSCoder) {
      
      let welcomePage = OnboardingContentViewController(title: "PAY WHAT YOU WANT", body: "I made my app so you could have the best experience reading tech related news. That’s why I want you to value it based on your satisfaction.", image: UIImage(named: "Purchase-Pig"), buttonText: "") {}
      let firstPurchasePage = OnboardingContentViewController(title: "MINT", body: "The app is great but there’s still a few places in room of improvement. If this is your feeling this is for you.", image: UIImage(named: "Purchase-Mint"), buttonText: "69p") {}
      let secondPurchasePage = OnboardingContentViewController(title: "SWEET", body: "IThis is the suggested price where you value the time I spent on development and design. Feel free to pay more or less.", image: UIImage(named: "Purchase-Lolly"), buttonText: "£1.49") {}
      let thirdPurchasePage = OnboardingContentViewController(title: "GOLD", body: "Hello is it me your looking for, if this popped into your mind using the app then this is the price for you.", image: UIImage(named: "Purchase-Gold"), buttonText: "£2.99") {}
      
      super.init(backgroundImage: nil, contents: [welcomePage, firstPurchasePage, secondPurchasePage, thirdPurchasePage])
      
      // Customize Onboard viewController
      allowSkipping = true
      skipHandler = { print("Skip") }
      
   }
   
   override func viewDidLoad() {
      super.viewDidLoad()
      view.backgroundColor = UIColor.yellowColor()
   }
   
}
