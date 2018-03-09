//
//  NewItemAddViewController.swift
//  KalburgiSrinivas-TrackMyJunkFood
//
//  Created by KK Charli on 3/8/18.
//  Copyright © 2018 Kalburgi Srinivas,Kishan. All rights reserved.
//

import UIKit

class NewItemAddViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    @IBOutlet weak var foodNameTF: UITextField!
    @IBOutlet weak var calTF: UITextField!
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "addItem"{
            if let data = Double(calTF.text!) {
                AppDelegate.model.addNewItem(name: foodNameTF.text!, calories: data)
            }
        }
    }


}
