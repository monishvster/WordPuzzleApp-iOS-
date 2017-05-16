//
//  Model.swift
//  WordPuzzle
//
//  Created by Verma,Monish on 2/9/17.
//  Copyright © 2017 Verma,Monish. All rights reserved.
//

import Foundation

class Model {

var yesPScore:Int
var noPScore:Int
var yesNScore:Int
var noNScore:Int
var attemptP:Int
var attemptN:Int

    init(yesPScore:Int, noPScore:Int, yesNScore:Int, noNScore:Int, attemptP:Int, attemptN:Int) {
        self.yesPScore = yesPScore
        self.yesNScore = yesNScore
        self.noPScore = noPScore
        self.noNScore = noNScore
        self.attemptN = attemptN
        self.attemptP = attemptP
        
        
    }

}
