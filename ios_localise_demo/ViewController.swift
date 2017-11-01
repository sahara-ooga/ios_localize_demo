//
//  ViewController.swift
//  ios_localise_demo
//
//  Created by Yuu Ogasa on 2017/11/01.
//  Copyright © 2017年 SundayCarpenter. All rights reserved.
//　https://qiita.com/Sim_progra/items/c9b04377dfa1425085c3

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myName = "sim"
        
        print(NSLocalizedString("welcome", comment: ""))
        print(String(format: NSLocalizedString("name", comment: ""), myName))
        print(String(format: NSLocalizedString("numbers", comment: ""), 10, 20))
        print(String(format: NSLocalizedString("words", comment: ""), "Apple", "Mac"))
        
        /*
         # 日本語環境
         ハローワールド！
         あなたの名前は sim です。
         壱: 10, 弐: 20
         弐: Mac, 壱: Apple
         
         #それ以外
         Hello, World!
         Your name is sim.
         one: 10, two: 20
         one: Apple, two: Mac
         */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

