//
//  ReportViewController.swift
//  KalburgiSrinivas-TrackMyJunkFood
//
//  Created by Kalburgi Srinivas,Kishan on 3/6/18.
//  Copyright © 2018 Kalburgi Srinivas,Kishan. All rights reserved.
//

import UIKit

class ReportViewController: UIViewController {

    @IBOutlet weak var summary: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        AppDelegate.model.loadData()
        summary.text! = AppDelegate.model.combinedReport()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func resetAction(_ sender: UIButton) {
        AppDelegate.model.reset()
        summary.text! = AppDelegate.model.combinedReport()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }


}

