//
//  ViewController.swift
//  counterAppQuestionCode
//
//  Created by user on 2018/08/23.
//  Copyright © 2018年 user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var label:UILabel! = nil
    var count:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // ラベルの作成
        self.label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
        self.label.backgroundColor = UIColor.orange
        self.label.layer.cornerRadius = 20
        self.label.layer.masksToBounds = true
        self.label.center = CGPoint(x: self.view.bounds.midX, y: 100)
        self.label.textAlignment = .center
        
        label.font = UIFont.systemFont(ofSize: 48)
        label.text = String(count)
        
        self.view.addSubview(label)
        
        // カウントアップボタンの作成
        let buttonCountUp = UIButton(type: .system)
        buttonCountUp.frame = CGRect(x: 0, y: 150, width: 100, height: 100)
        buttonCountUp.center.x = label.center.x
        buttonCountUp.setTitle("カウントアップ", for: .normal)
        let imageMaru = UIImage(named: "maru")
        buttonCountUp.setBackgroundImage(imageMaru, for: .normal)
        buttonCountUp.addTarget(self, action: #selector(countUp(_:)), for: .touchUpInside)
        
        self.view.addSubview(buttonCountUp)
        
        // リセットボタンの作成
        let buttonReset = UIButton(type: .system)
        buttonReset.frame = buttonCountUp.frame.offsetBy(dx: 0, dy: buttonCountUp.frame.height+5)
        buttonReset.setTitle("クリア", for: .normal)
        let imageBatu = UIImage(named: "batu")
        buttonReset.setBackgroundImage(imageBatu, for: .normal)
        buttonReset.addTarget(self, action: #selector(countClear(_:)), for: .touchUpInside)
        
        self.view.addSubview(buttonReset)
    }
    
    // カウント加算メソッド
    @objc func countUp(_ button:UIButton) {
        count += 1
        label.text = String(count)
    }
    
    // カウントクリアメソッド
    @objc func countClear(_ button:UIButton) {
        count = 0
        label.text = String(count)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

