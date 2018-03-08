//
//  model.swift
//  KalburgiSrinivas-TrackMyJunkFood
//
//  Created by KK Charli on 3/7/18.
//  Copyright © 2018 Kalburgi Srinivas,Kishan. All rights reserved.
//

import Foundation

struct FoodData {
    var Name: String
    var Calories: Double
    var Tally: Int
}

class FoodRecorder {
    
    var Foods: [FoodData]
    
    init() {
        Foods = []
    }
    
    func loadData() {
        Foods.append(FoodData.init(Name: "Popcord", Calories: 106, Tally: 1))
        Foods.append(FoodData.init(Name: "Coke", Calories: 140, Tally: 1))
        Foods.append(FoodData.init(Name: "Potato", Calories: 152, Tally: 1))
    }
    
    func increaseTally(forItem i:Int) {
        Foods[i].Tally += 1
    }
    
    func getCalories(forItime i:Int) -> Double {
        //        will compute and return the
        //        number of calories for item with index i. (Multiply the tally by the
        //        calories)
        return Double (Foods[i].Tally) * Foods[i].Calories
    }
    
    func report(forItem i:Int) -> String {
        return "The calories consumed for \(Foods[i].Name) is \(getCalories(forItime: i))."
    }
    
    func totalCalories() -> Double {
        //        sum of the calories over
        //        all items
        var totalCalories = 0.0
        for i in 0 ... Foods.count-1 {
            totalCalories += Foods[i].Calories
        }
        return totalCalories
    }
    
    func combinedReport() -> String {
        return "Total calories consumed \(totalCalories())."
    }
    
    func reset() {
        for i in 0 ... Foods.count - 1 {
            Foods[i].Tally = 0
        }
    }
    
}
