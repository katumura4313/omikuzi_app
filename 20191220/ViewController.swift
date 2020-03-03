//
//  ViewController.swift
//  20191220
//
//  Created by USER on 2019/12/20.
//  Copyright © 2019 jp.go. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//IBOutletはclassの下の行
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var omikuziImage: UIImageView!
    
//起動時に一番最初に一回呼ばれる呪文
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //範囲を指定しない場合
        //var number = arc4random()
        //print("number",number)
    }
    @IBAction func myButton(_ sender: Any) {
        //範囲を指定して乱数を発生させる場合
        // 例えば0〜3の4種類のランダムな整数値だったら
        //arc4random_uniform(何種類)
        let number = arc4random_uniform(4)
        print("number",number)
       // myLabel.text = String(number)
        //var 変数 :初期値から値を変更する場合に使う
        //let 定数 :初期値からに値を上書きしない時に使う
        
        if number == 0 {
             myLabel.text = "大吉"
            omikuziImage.image = UIImage(named:"daikichi")
        }else if number == 1{
            myLabel.text = "中吉"
            omikuziImage.image = UIImage(named:"chuukichi")
        }else if number == 2 {
            myLabel.text = "小吉"
            omikuziImage.image = UIImage(named:"syoukichi")
        }else if number == 3 {
            myLabel.text = "凶"
            omikuziImage.image = UIImage(named:"kyou")
        }
        
        //0:daikiti
        //1:tyuukiti
        //2:syoukiti
        //3:kyou
        
        
        
    }
        
    
}

