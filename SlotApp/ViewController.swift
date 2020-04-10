//
//  ViewController.swift
//  SlotApp
//
//  Created by 矢野涼 on 2020-04-10.
//  Copyright © 2020 Ryo Yano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    @IBOutlet weak var startButton: UIButton!
    
    var timer1 = Timer()
    var timer2 = Timer()
    var timer3 = Timer()
    var count1 = Int()
    var count2 = Int()
    var count3 = Int()
    var imageArray1 = [UIImage]()
    var imageArray2 = [UIImage]()
    var imageArray3 = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for i in 0..<5{
            let image1 = UIImage(named: "\(i)")
            imageArray1.append(image1!)
        }
        for i in 7..<11{
            let image2 = UIImage(named: "\(i)")
            imageArray2.append(image2!)
        }
        for i in 11..<15{
            let image3 = UIImage(named: "\(i)")
            imageArray3.append(image3!)
        }
        
        
        imageView1.image = UIImage(named: "0")
        imageView2.image = UIImage(named: "0")
        imageView3.image = UIImage(named: "0")
        
    }
    func startTimer1(){
        timer1 = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(timerUpDate1), userInfo: nil, repeats: true)
    }
    func startTimer2(){
        timer2 = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(timerUpDate2), userInfo: nil, repeats: true)
    }
    func startTimer3(){
        timer3 = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(timerUpDate3), userInfo: nil, repeats: true)
    }
    @objc func timerUpDate1(){
        count1 += 1
        
        if count1 >= 4{
            count1 = 0
        }
        imageView1.image = imageArray1[count1]
        
    }
    @objc func timerUpDate2(){
        count2 += 1
        if count2 >= 4{
            count2 = 0
        }
        imageView2.image = imageArray2[count2]
        
    }
    @objc func timerUpDate3(){
        count3 += 1
        if count3 >= 4{
            count3 = 0
        }
        
        imageView3.image = imageArray3[count3]
        
    }
    
    @IBAction func start(_ sender: Any) {
        startTimer1()
        startTimer2()
        startTimer3()
        
    }
    @IBAction func stop1(_ sender: Any) {
        timer1.invalidate()
        
    }
    @IBAction func stop2(_ sender: Any) {
        timer2.invalidate()
        
    }
    @IBAction func stop3(_ sender: Any) {
        timer3.invalidate()
        
    }
    

}

