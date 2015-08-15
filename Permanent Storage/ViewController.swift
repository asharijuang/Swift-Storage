//
//  ViewController.swift
//  Permanent Storage
//
//  Created by Ashari Juang on 8/15/15.
//  Copyright © 2015 kodejs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add object and stored to NSuserDefault
        NSUserDefaults.standardUserDefaults().setObject("Ashari Juang", forKey: "name")
        
        let username = NSUserDefaults.standardUserDefaults().objectForKey("name")! as! String
        
        print(username)
        // Buat variabel data array
        let array = [1, 2, 3, 4]
        // Simpan array kedalam nsuserdefaults
        NSUserDefaults.standardUserDefaults().setObject(array, forKey: "ArrayData")
        
        // Mengambil object berdasarkan key, kemudian mengconvert menjadi NSArray
        let returnArray = NSUserDefaults.standardUserDefaults().objectForKey("ArrayData")! as! NSArray
        
        // Menampilkan x partial
        for x in returnArray {
            print(x)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

