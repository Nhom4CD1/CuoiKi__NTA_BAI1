//
//  ViewController.swift
//  NTA_CAU1
//
//  Created by Cntt19 on 7/5/17.
//  Copyright © 2017 Cntt19. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var inactiveQueue: DispatchQueue!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //concurrentQueues();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var inactiveQueue: DispatchQueue!
    func concurrentQueues()
    {
        // let anotherQueue = DispatchQueue(label: "anotheroQueue", qos: .utility,atributes: .concurrent)
        let anotherQueue = DispatchQueue(label: "anotheroQueue", qos: .utility, attributes: .concurrent)
        inactiveQueue = anotherQueue
        anotherQueue.async
            {
                for i in 0..<10
                {
                    print("🔴",i)
                }
        }
        anotherQueue.async
            {
                for i in 100..<110
                {
                    print("🔵",i)
                }
        }
        anotherQueue.async
            {
                for i in 1000..<1010
                {
                    print("⚫️",i)
                }
        }
    }
    
    func concurrentQueues2()
    {
        //PA2
        //PA 2
        let thread1 = DispatchQueue(label: "thread 1", qos: .userInitiated)
        let thread2 = DispatchQueue(label: "thread 2", qos: .userInitiated)
        let thread3 = DispatchQueue(label: "thread 3", qos: .userInitiated)
        print("Phuong An 2")
        thread1.async {
            for i in 0...9 {
                print("🔴 \(i)")
            }
        }
        thread2.async {
            for i in 100...109 {
                print("🔵 \(i)")
            }
        }
        thread3.async {
            for i in 1000...1009 {
                print("⚫️ \(i)")
            }
        }
    }
    @IBAction func PhuongAn1(_ sender: Any) {
        concurrentQueues()
    }
    @IBAction func PhuongAn2(_ sender: Any) {
        concurrentQueues2()
    }

    
}



