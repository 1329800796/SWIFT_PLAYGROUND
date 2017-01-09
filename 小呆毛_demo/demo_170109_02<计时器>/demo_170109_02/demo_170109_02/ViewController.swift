//
//  ViewController.swift
//  demo_170109_02
//
//  Created by MAC on 2017/1/9.
//  Copyright © 2017年 MAC. All rights reserved.
//

import UIKit

// 这就是首页面

class ViewController: UIViewController {

    //用来显示即时器触发状态的显示器 showLabel
    let showLabel = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: mainWidth, height: mainHeigt*0.15))
    
    //按钮 触发计时器 starBtn
    let starBtn = UIButton.init(frame: CGRect.init(x: 0, y: mainHeigt * 0.155, width: mainWidth * 0.5 - margnTwoBtn, height: 50))
    
    //按钮 暂停计时器 endBtn
    let endBtn = UIButton.init(frame: CGRect.init(x: mainWidth * 0.5 + margnTwoBtn, y: mainHeigt * 0.155, width: mainWidth * 0.5 - margnTwoBtn, height: 50))
    
    // 计时器
    var time : Timer?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 添加界面
        setupView()
        
    }
    
    func setupView() {
        
        //
        showLabel.backgroundColor = UIColor.black
        starBtn.backgroundColor = UIColor.green
        endBtn.backgroundColor = UIColor.orange
        
        starBtn.setTitle("开始", for: .normal)
        starBtn.setTitle("结束", for: .selected)
        endBtn.setTitle("暂停", for: .normal)
        endBtn.setTitle("继续", for: .selected)
        
        self.view.addSubview(showLabel)
        self.view.addSubview(starBtn)
        self.view.addSubview(endBtn)
        
        [starBtn,endBtn].forEach{
            ($0.addTarget(self, action: #selector(buttonTapped(sender:)), for: .touchUpInside))
        }

    
    }

    func buttonTapped(sender: UIButton) {
        switch sender {
        case starBtn:
            starBtn.isSelected = !starBtn.isSelected
            starBtn.isSelected ? beginSC() : stopSC()
        case endBtn:
            endBtn.isSelected = !endBtn.isSelected
            endBtn.isSelected ? pauseSC() : continSC()
            
        default:
            break
        }
    }

    
    // MARK: - 操作
    // TODO: - 记得做
    // FIXME: - 提醒
    
    func beginSC() {
        time = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(changeLabel), userInfo: nil, repeats: true)
    }
    func stopSC() {
        showLabel.backgroundColor = UIColor.red
        time?.invalidate()
        time = nil
    }
    func pauseSC() {
        if !starBtn.isSelected {
            return
        }
        time?.invalidate()
        time = nil
    }
    func continSC() {
        if !starBtn.isSelected {
            return
        }
        beginSC()
    }
    func changeLabel() {

        // 调用 ColorHelpe 生成随机色 方法
        showLabel.backgroundColor = ColorHelpe.randomColor()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

