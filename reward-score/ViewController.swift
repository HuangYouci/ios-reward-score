//
//  ViewController.swift
//  reward-score
//
//  Created by 黃宥琦 on 2024/10/5.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainGreeting: UILabel!
    
    @IBOutlet weak var mainModify: UIButton!
    
    @IBOutlet weak var mainScore: UILabel!
    
    @IBOutlet weak var modPassword: UITextField!
    
    @IBOutlet weak var modChange: UITextField!
    
    @IBAction func modButton(_ sender: Any) {
        // 檢查密碼
            if modPassword.text == "950509" {
        // 密碼正確，更新 mainScore
                mainScore.text = modChange.text
                modPassword.text = ""
                } else {
                    modPassword.text = "密碼錯誤!!"
                }
                // 清空文本框
                modChange.text = ""
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
     
            self.view?.endEditing(true)
     }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Load")
        // Do any additional setup after loading the view.
        
        // 取得當前時間
        let currentHour = Calendar.current.component(.hour, from: Date())
                
        // 根據時間段顯示對應的問候語
        if currentHour >= 3 && currentHour < 10 {
                    mainGreeting.text = "早安"
                } else if currentHour >= 10 && currentHour < 14 {
                    mainGreeting.text = "午安"
                } else if currentHour >= 14 && currentHour < 18 {
                    mainGreeting.text = "下午好"
                } else {
                    mainGreeting.text = "晚安"
                }
        
        // 分數歸零
        mainScore.text = "0"
    }
}

