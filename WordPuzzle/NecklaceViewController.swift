//
//  NecklaceViewController.swift
//  WordPuzzle
//
//  Created by Verma,Monish on 2/6/17.
//  Copyright © 2017 Verma,Monish. All rights reserved.
//
import UIKit

class NecklaceViewController: UIViewController {
    
    var myModel:Model!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myModel = (UIApplication.shared.delegate as! AppDelegate).myModel
    

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //Checking if input is Necklace or not. It is O(n) complexity
    func necklaceCheck(input:String) ->Int {
        
        var str2:String = input + input
        
        var rotation:Int = 0
        var answer:Int = 0
        
        
        for var i in stride(from: 1, to: str2.characters.count, by: 1) {
            if str2[str2.index(str2.startIndex, offsetBy: i)] < str2[str2.index(str2.startIndex, offsetBy: answer)] {
                answer = i
                rotation = 0
            }
                
            else if str2[str2.index(str2.startIndex, offsetBy: i)] == str2[str2.index(str2.startIndex, offsetBy: answer+rotation)] {
                rotation += 1
            }
                
            else if str2[str2.index(str2.startIndex, offsetBy: i)] < str2[str2.index(str2.startIndex, offsetBy: answer+rotation)] {
                answer = i - rotation
                rotation = 0
                i = answer
            }
            else {
                rotation = 0
            }
            
            
        }
        return answer
        
        
    }
    
    var yesScore:Int = 0
    var noScore:Int = 0
    var attempts:Int = 0
    
    //MARK: Outlets
    
    @IBOutlet weak var inputTXT: UITextField!
    
    //MARK: Actions
    
    @IBAction func yesBTN(_ sender: UIButton) {
        let inputString:String = inputTXT.text!
        
        if necklaceCheck(input: inputString) == 0 {
            
            yesScore += 1
        }
        
        attempts += 1
        myModel.attemptN = attempts
        myModel.yesNScore = yesScore
        
        
    }

    
    @IBAction func noBTN(_ sender: UIButton) {
        
        let inputString:String = inputTXT.text!
        
        if necklaceCheck(input: inputString) != 0 {
            
            noScore += 1
        }
        attempts += 1
       
        myModel.attemptN = attempts
        myModel.noNScore = noScore
        
        }
  
}
