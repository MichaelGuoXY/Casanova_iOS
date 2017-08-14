//
//  MyTabBarController.swift
//  Casanova
//
//  Created by Xiaoyu Guo on 8/14/17.
//  Copyright © 2017 Xiaoyu Guo. All rights reserved.
//

import UIKit

class MyTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let vc1 = storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        let vc2 = storyboard?.instantiateViewController(withIdentifier: "SavedViewController") as! SavedViewController
        let vc3 = storyboard?.instantiateViewController(withIdentifier: "ActivitiesViewController") as! ActivitiesViewController
        let vc4 = storyboard?.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
        
        self.viewControllers = [vc1, vc2, vc3, vc4]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
