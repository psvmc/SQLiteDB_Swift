//
//  AppDelegate.swift
//  SQLiteDB
//
//  Created by 张剑 on 2017/1/6.
//  Copyright © 2017年 张剑. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        createTable();
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
    
    
    func createTable(){
        let db:SQLiteDB = SQLiteDB.sharedInstance;
        //db.dropAllTable();
        //创建数据库
        
        //聊天记录表
        _ = db.execute(sql: "CREATE TABLE if not exists talkmessage( id integer PRIMARY KEY,msgType text,message text,senderName text,senderPic text, read integer,sender text,receiver text,srdate text,isReceive int,voiceDuration text)", parameters: nil);
        //首页通知表
        _ = db.execute(sql: "CREATE TABLE if not exists appmessage( id integer PRIMARY KEY,userId text,loginName text,name text,image text,detail text,time text,type text,msgType text,loginUserId text)", parameters: nil);
    }


}

