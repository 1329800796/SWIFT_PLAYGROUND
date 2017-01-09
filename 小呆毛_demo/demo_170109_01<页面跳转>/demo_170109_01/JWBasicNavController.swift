//
//  JWBasicNavController.swift
//  demo_170109_01
//
//  Created by MAC on 2017/1/9.
//  Copyright © 2017年 MAC. All rights reserved.
//

import UIKit

class JWBasicNavController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.orange
    }
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        let count = self.childViewControllers.count
        if count>0 {
            let btn = UIButton()
            btn.setTitle("返回", for: UIControlState.normal)
            btn.setTitleColor(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), for: .normal)
            btn.setImage(#imageLiteral(resourceName: "navigationbar_back_withtext"), for: UIControlState.normal)
            btn.addTarget(self, action: #selector(clickScan), for: .touchUpInside)
            btn.sizeToFit()
            viewController.navigationItem.leftBarButtonItem=UIBarButtonItem(customView: btn)
            viewController.hidesBottomBarWhenPushed=true
            
        }
        super.pushViewController(viewController, animated: animated)
    }
    
    
    @objc private func clickScan(){
        self.popViewController(animated: true)
    }
    

}
