//
//  ScoresViewController.swift
//  WordPuzzle
//
//  Created by Verma,Monish on 2/6/17.
//  Copyright © 2017 Verma,Monish. All rights reserved.
//
import UIKit

class ScoresViewController: UIViewController {
    
     var myModel:Model!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        myModel = (UIApplication.shared.delegate as! AppDelegate).myModel
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Outlets
    
    @IBOutlet weak var palindromeLBL: UILabel!
    @IBOutlet weak var necklaceLBL: UILabel!
    
    //MARK:Actions
    
    @IBAction func resetBTN(_ sender: UIButton) {
        palindromeLBL.text = "0%"
        necklaceLBL.text = "0%"
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        let palindromePercent = (Double(myModel.yesPScore)+Double(myModel.noPScore))/Double(myModel.attemptP) * 100
    
        
        let necklacePercent = (Double(myModel.yesNScore)+Double(myModel.noNScore))/Double(myModel.attemptN) * 100
       
        
        
        palindromeLBL.text = String(format: "%.2f", palindromePercent)+"%"
        necklaceLBL.text = String(format: "%.2f", necklacePercent)+"%"
        
    }
}
