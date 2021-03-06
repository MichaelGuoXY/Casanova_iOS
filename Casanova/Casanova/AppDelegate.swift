//
//  AppDelegate.swift
//  Casanova
//
//  Created by Xiaoyu Guo on 7/15/17.
//  Copyright © 2017 Xiaoyu Guo. All rights reserved.
//

import UIKit
import Firebase
import Siren

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Print fonts
        // printFonts()
        
        // Tab bar config
        UITabBar.appearance().tintColor = UIColor.brandColor
        UINavigationBar.appearance().isTranslucent = false
        
        // Firebase
        FirebaseApp.configure()
        
        // UMeng Setup
        /* 打开日志 */
        UMSocialManager.default().openLog(false)
        // 打开图片水印
        //[UMSocialGlobal shareInstance].isUsingWaterMark = YES;
        UMSocialGlobal.shareInstance().isClearCacheWhenGetUserInfo = false
        
        /* 设置友盟appkey */
        UMSocialManager.default().umSocialAppkey = USHARE_APPKEY
        
        configUSharePlatforms()
        
        // For more info about Siren, refer to https://github.com/ArtSabintsev/Siren
        Siren.shared.alertType = .option
        
        return true
    }
    
    func configUSharePlatforms() {
        /*
         设置微信的appKey和appSecret
         [微信平台从U-Share 4/5升级说明]http://dev.umeng.com/social/ios/%E8%BF%9B%E9%98%B6%E6%96%87%E6%A1%A3#1_1
         */
        UMSocialManager.default().setPlaform(.wechatSession, appKey: "wxb81ba29458679b8b", appSecret: "abc408fe691b4194d5a5cf9ddc48866d", redirectURL: nil)
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
        Siren.shared.checkVersion(checkType: .immediately)
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        Siren.shared.checkVersion(checkType: .daily)
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

    func application(_ application: UIApplication, handleOpen url: URL) -> Bool {
        let result = UMSocialManager.default().handleOpen(url)
        if !result {
            // 其他如支付等SDK的回调
        }
        return result
    }
    
    func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool {
        //6.3的新的API调用，是为了兼容国外平台(例如:新版facebookSDK,VK等)的调用[如果用6.2的api调用会没有回调],对国内平台没有影响
        let result = UMSocialManager.default().handleOpen(url, sourceApplication: sourceApplication, annotation: annotation)
        if !result {

        }
        return result
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        //6.3的新的API调用，是为了兼容国外平台(例如:新版facebookSDK,VK等)的调用[如果用6.2的api调用会没有回调],对国内平台没有影响。
        let result = UMSocialManager.default().handleOpen(url, options: options)
        if !result {

        }
        return result
    }
    
    // Respond to Universal Links
    func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([Any]?) -> Void) -> Bool {
        // pass the url to the handle deep link call
        if userActivity.activityType == NSUserActivityTypeBrowsingWeb {
            guard let url = userActivity.webpageURL else { return true }
            let host = url.host
            if host == "tft.rocks" {
                if let deepLinkManager = DeepLinkManager(withUniversalLink: url) {
                    ViewControllerManager.shared.deepLinkManager = deepLinkManager
                    ViewControllerManager.shared.performedActions = []
                    ViewControllerManager.shared.performActions()
                } else {
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                }
            } else {
               UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
        return true
    }
    
    func printFonts() {
        let fontFamilyNames = UIFont.familyNames
        for familyName in fontFamilyNames {
            print("------------------------------")
            print("Font Family Name = [\(familyName)]")
            let names = UIFont.fontNames(forFamilyName: familyName)
            print("Font Names = [\(names)]")
        }
    }
}
