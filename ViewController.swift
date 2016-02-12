//
//  ViewController.swift
//  NSUserActivityExample
//
//

import UIKit
import CoreSpotlight

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let userActivity = NSUserActivity(activityType: "com.example.test")
        userActivity.webpageURL = NSURL(string: "http://www.example.com")
        let contentAttributeSet = CSSearchableItemAttributeSet()
        contentAttributeSet.title = "Example Activity"
        contentAttributeSet.contentDescription = "This is an example activity"
        contentAttributeSet.relatedUniqueIdentifier = userActivity.webpageURL?.absoluteString
        userActivity.contentAttributeSet = contentAttributeSet
        userActivity.eligibleForSearch = true
        self.userActivity = userActivity
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

