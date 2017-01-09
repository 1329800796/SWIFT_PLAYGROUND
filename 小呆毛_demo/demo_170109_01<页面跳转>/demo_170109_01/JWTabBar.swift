//
//  JWTabBar.swift
//  demo_170109_01
//
//  Created by MAC on 2017/1/9.
//  Copyright © 2017年 MAC. All rights reserved.
//

import UIKit

class JWTabBar: UITabBar {

    override init(frame:CGRect){
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        super.init(coder:aDecoder)
    }
    
    func setupUI() {
        self.addSubview(composeBtn)
        composeBtn.addTarget(self, action: #selector(clickAction), for: .touchUpInside)
    }
    
    @objc private func clickAction(){
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let w = UIScreen.main.bounds.width/5
        let h = self.bounds.height
        var index = 0
        for subview in subviews{
            if subview.isKind(of: NSClassFromString("UITabBarButton")!) {
                subview.frame=CGRect(x: CGFloat(index) * w, y: 0, width: w, height: h)
                //                print(subview.frame)
                //            if index==1 {
                //                index+=1
                //            }
                //            index += 1
                index += (index == 1 ? 2 : 1)
            }
        }
        
        composeBtn.center = CGPoint(x: self.center.x, y: h*0.5)
        composeBtn.bounds.size = CGSize(width: w, height: h)
        print(composeBtn.center)
    }

    lazy var composeBtn:UIButton = {
        let btn = UIButton(type: UIButtonType.custom)
        btn.setImage(#imageLiteral(resourceName: "tabbar_compose_icon_add"), for: .normal)
        btn.setImage(#imageLiteral(resourceName: "tabbar_compose_icon_add_highlighted"), for: .highlighted)
        btn.setBackgroundImage(#imageLiteral(resourceName: "tabbar_compose_button"), for: .normal)
        btn.setBackgroundImage(#imageLiteral(resourceName: "tabbar_compose_button_highlighted"), for: .highlighted)
        return btn
    }()

    
}
