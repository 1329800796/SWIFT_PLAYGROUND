//
//  JWTableBarControler.swift
//  demo_170109_01
//
//  Created by MAC on 2017/1/9.
//  Copyright © 2017年 MAC. All rights reserved.
//

import UIKit

// 是 tabBar 管理器
class JWTableBarControler: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tabbar = JWTabBar()
        self.setValue(tabbar, forKey: "tabBar")
        addChildViewControllers()
        
    }
    
    func addChildViewControllers () {
        addChildViewController(vc: JWHomeViewController(), title: "首页", imageName: "tabbar_home")
        addChildViewController(vc: JWMessageViewController(), title: "消息", imageName: "tabbar_message_center")
        addChildViewController(vc: JWDiscoverViewController(), title: "发现", imageName: "tabbar_discover")
        addChildViewController(vc: JWMineViewController(), title: "我", imageName: "tabbar_profile")
    }
    
    func addChildViewController (vc:UIViewController, title:String, imageName:String) {
        let nav = JWBasicNavController.init(rootViewController: vc)
        vc.tabBarItem.title = title
        vc.navigationItem.title=title
        vc.tabBarItem.image=UIImage(named: imageName)
        vc.tabBarItem.selectedImage=UIImage(named: imageName + "_selected")?.withRenderingMode(.alwaysOriginal)
        vc.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName : UIColor.orange], for: UIControlState.selected)
        addChildViewController(nav)
    }

}
