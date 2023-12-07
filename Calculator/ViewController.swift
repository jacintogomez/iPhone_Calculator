//
//  ViewController.swift
//  Calculator
//
//  Created by Jacinto Gomez on 12/7/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calcworkings: UILabel!
    
    @IBOutlet weak var calcresults: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
    }
    
    var workings:String=""
    
    func clearAll(){
        workings=""
        calcworkings.text=""
        calcresults.text=""
    }
    
    func addtoworkings(val:String){
        workings=workings+val
        calcworkings.text=workings
    }
    
    @IBAction func allclear(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func backspace(_ sender: Any) {
        if(!workings.isEmpty){
            workings.removeLast()
            calcworkings.text=workings
        }
    }
    
    @IBAction func percent(_ sender: Any) {
        addtoworkings(val:"%")
    }
    
    @IBAction func divideby(_ sender: Any) {
        addtoworkings(val:"/")
    }
    
    @IBAction func multiplyby(_ sender: Any) {
        addtoworkings(val:"*")
    }
    
    @IBAction func subtract(_ sender: Any) {
        addtoworkings(val:"-")
    }
    
    @IBAction func add(_ sender: Any) {
        addtoworkings(val:"+")
    }
    
    @IBAction func pressequals(_ sender: Any) {
        //addtoworkings(val:"=")
        let exp=NSExpression(format:workings)
        let result=exp.expressionValue(with:nil,context:nil) as! Double
        let resultstr=formatoutput(result:result)
        calcresults.text=resultstr
    }
    
    func formatoutput(result:Double) -> String{
        if(result.truncatingRemainder(dividingBy:1)==0){
            return String(format:"%.0f",result)
        }else{
            return String(format:"%.2f",result)
        }
    }
    
    @IBAction func pressdecimal(_ sender: Any) {
        addtoworkings(val:".")
    }
    
    @IBAction func presszero(_ sender: Any) {
        addtoworkings(val:"0")
    }
    
    @IBAction func pressone(_ sender: Any) {
        addtoworkings(val:"1")
    }
    
    @IBAction func presstwo(_ sender: Any) {
        addtoworkings(val:"2")
    }
    
    @IBAction func pressthree(_ sender: Any) {
        addtoworkings(val:"3")
    }
    
    @IBAction func pressfour(_ sender: Any) {
        addtoworkings(val:"4")
    }
    
    @IBAction func pressfive(_ sender: Any) {
        addtoworkings(val:"5")
    }
    
    @IBAction func presssix(_ sender: Any) {
        addtoworkings(val:"6")
    }
    
    @IBAction func pressseven(_ sender: Any) {
        addtoworkings(val:"7")
    }
    
    @IBAction func presseight(_ sender: Any) {
        addtoworkings(val:"8")
    }
    
    @IBAction func pressnine(_ sender: Any) {
        addtoworkings(val:"9")
    }
    
}

