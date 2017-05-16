//
//  PalindromeViewController.swift
//  WordPuzzle
//
//  Created by Verma,Monish on 2/6/17.
//  Copyright © 2017 Verma,Monish. All rights reserved.
//

import UIKit

class PalindromeViewController: UIViewController {
    
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
    
    
    //Function to check palindrome
    func checkPalindrome(input:String) -> Bool {
        var revstring = ""
        
        for character in input.characters {
            revstring = String(character) + revstring
        }
        
        return (revstring.lowercased() == input.lowercased())
    }
    
    var yesScore:Int = 0
    var noScore:Int = 0
    var attempts:Int = 0
    //MARK: Outlets
    
    @IBOutlet weak var inputTXT: UITextField!
    
    
    //MARK: Actions
    
    
    
    @IBAction func yesBTN(_ sender: UIButton) {
        
        let inputString:String = inputTXT.text!
       
        if(checkPalindrome(input: inputString)) {
            yesScore += 1
        }
        attempts += 1
        myModel.attemptP = attempts
        myModel.yesPScore = yesScore
      
        
    }
    
    
    @IBAction func noBTN(_ sender: UIButton) {
        
        let inputString:String = inputTXT.text!
        
        if(!checkPalindrome(input: inputString)) {
            noScore += 1
        }
        
        attempts += 1
        
        myModel.attemptP = attempts
        myModel.noPScore = noScore
   

    }
    
    

}

