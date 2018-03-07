//
//  FoodRecorder.swift
//  KalburgiSrinivas-TrackMyJunkFood
//
//  Created by Kalburgi Srinivas,Kishan on 3/6/18.
//  Copyright © 2018 Kalburgi Srinivas,Kishan. All rights reserved.
//

import UIKit

class FoodRecorder {
    
    var Foods: [FoodData]
    
    init() {
        Foods = []
    }
    
    func loadData() {
        //adds items to the array. There should be 3 items
//        i. Popcord has 106 calories per serving
//        ii. Coke has 140 calories per serving
//        iii. Potato Chips have 152 calories per serving.
    }

    func increaseTally(forItem i:Int) {
//        increase the tally for the given item by 1
    }
    
    func getCalories(forItime i:Int) -> Double {
//        will compute and return the
//        number of calories for item with index i. (Multiply the tally by the
//        calories)
        return 1.0
    }
    
    func report(forItem i:Int) -> String {
        return "The calories consumed for <<name>> is <<getCalories()>>."
    }
    
    func totalCalories() -> Double {
//        sum of the calories over
//        all items
        return 1.0
    }
    
    func combinedReport() -> String {
        return "Total calories consumed <<totalCalories()>>."
    }
    
    func reset() {
//        set the tally for each item to zero
    }
    
}
