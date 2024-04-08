//
//  ViewController.swift
//  Calculater
//
//  Created by Mehmet Emin Şeker on 27.03.2024.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var BtnMod: UIButton!
    @IBOutlet weak var BtnReturn: UIButton!
    @IBOutlet weak var BtnClear: UIButton!
    @IBOutlet weak var BtnDivide: UIButton!
    @IBOutlet weak var BtnMultiply: UIButton!
    @IBOutlet weak var BtnSubtract: UIButton!
    @IBOutlet weak var BtnCollect: UIButton!
    @IBOutlet weak var BtnHistory: UIButton!
    @IBOutlet weak var BtnEqual: UIButton!
    
    @IBOutlet weak var TxtNumbers: UITextField!
    
    
    var ValueOne = 0.0
    var ValueTwo = 0.0
    var ValueResult = 0.0
    var btnColor = UIColor(red: 0.5333333333, green: 0.5882352941176471, blue: 0.6666666666666666, alpha: 1)
    var btnColorSelect = UIColor(red: 0.803921568627451, green: 0.8705882352941177, blue: 1, alpha: 1)
    var Value = 0
    
    
    override func viewDidLoad() {
        ButtonStyle()
        
        let redPlaceholderText = NSAttributedString(string: " ",
        attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        TxtNumbers.attributedPlaceholder = redPlaceholderText
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func ButtonStyle(){
        BtnMod.layer.borderWidth = 1
        BtnMod.layer.borderColor = UIColor.black.cgColor
        BtnMod.layer.cornerRadius = 5
        
        BtnDivide.layer.borderWidth = 1
        BtnDivide.layer.borderColor = UIColor.black.cgColor
        BtnDivide.layer.cornerRadius = 5
        
        BtnMultiply.layer.borderWidth = 1
        BtnMultiply.layer.borderColor = UIColor.black.cgColor
        BtnMultiply.layer.cornerRadius = 5
        
        BtnSubtract.layer.borderWidth = 1
        BtnSubtract.layer.borderColor = UIColor.black.cgColor
        BtnSubtract.layer.cornerRadius = 5
        
        BtnCollect.layer.borderWidth = 1
        BtnCollect.layer.borderColor = UIColor.black.cgColor
        BtnCollect.layer.cornerRadius = 5
        
        BtnClear.layer.borderWidth = 1
        BtnClear.layer.borderColor = UIColor.black.cgColor
        BtnClear.layer.cornerRadius = 5
        
        BtnReturn.layer.borderWidth = 1
        BtnReturn.layer.borderColor = UIColor.black.cgColor
        BtnReturn.layer.cornerRadius = 5
        
        BtnEqual.layer.borderWidth = 1
        BtnEqual.layer.borderColor = UIColor.black.cgColor
        BtnEqual.layer.cornerRadius = 5
        
        BtnHistory.layer.borderWidth = 1
        BtnHistory.layer.borderColor = UIColor.black.cgColor
        BtnHistory.layer.cornerRadius = 10
        
    }
    func ButtonFunction(BtnSelect: String){
            if BtnSelect == "BtnMod"{
                BtnMod.backgroundColor = btnColorSelect
                BtnDivide.backgroundColor = btnColor
                BtnMultiply.backgroundColor = btnColor
                BtnSubtract.backgroundColor = btnColor
                BtnCollect.backgroundColor = btnColor
            }
            else if BtnSelect == "BtnDivide"
            {
                BtnDivide.backgroundColor = btnColorSelect
                BtnMod.backgroundColor = btnColor
                BtnMultiply.backgroundColor = btnColor
                BtnSubtract.backgroundColor = btnColor
                BtnCollect.backgroundColor = btnColor
            }
            else if BtnSelect == "BtnMultiply"
            {
                BtnMultiply.backgroundColor = btnColorSelect
                BtnDivide.backgroundColor = btnColor
                BtnMod.backgroundColor = btnColor
                BtnSubtract.backgroundColor = btnColor
                BtnCollect.backgroundColor = btnColor
            }
            else if BtnSelect == "BtnSubtract"
            {
                BtnSubtract.backgroundColor = btnColorSelect
                BtnDivide.backgroundColor = btnColor
                BtnMultiply.backgroundColor = btnColor
                BtnMod.backgroundColor = btnColor
                BtnCollect.backgroundColor = btnColor
            }
            else if BtnSelect == "BtnCollect"
            {
                BtnCollect.backgroundColor = btnColorSelect
                BtnDivide.backgroundColor = btnColor
                BtnMultiply.backgroundColor = btnColor
                BtnSubtract.backgroundColor = btnColor
                BtnMod.backgroundColor = btnColor
            }
        if TxtNumbers.text != ""{
            if ValueOne == 0.0{
                ValueOne = Double(TxtNumbers.text!)!
                TxtNumbers.text = ""
            }
        }
    }
    @IBAction func BtnClear(_ sender: Any) {
        TxtNumbers.text = ""
        TxtNumbers.placeholder = ""
        ValueOne = 0.0
    }
    @IBAction func BtnReturn(_ sender: Any) {
        TxtNumbers.placeholder = String(Double(-1.0) * Double(ValueOne))
        if TxtNumbers.text == ""{
            ValueOne = (Double(-1.0) * Double(ValueOne))
        }else
        {
            TxtNumbers.text = String(Double(-1.0) * Double(TxtNumbers.text!)!)
        }
    }
    
    @IBAction func BtnMod(_ sender: Any) {
        ButtonFunction(BtnSelect: "BtnMod")
        Value = 5
    }
    @IBAction func BtnDivide(_ sender: Any) {
        ButtonFunction(BtnSelect: "BtnDivide")
        Value = 4
    }
    @IBAction func BtnMultiply(_ sender: Any) {
        ButtonFunction(BtnSelect: "BtnMultiply")
        Value = 3
    }
    @IBAction func BtnSubtract(_ sender: Any) {
        ButtonFunction(BtnSelect: "BtnSubtract")
        Value = 2
    }
    @IBAction func BtnCollect(_ sender: Any) {
        ButtonFunction(BtnSelect: "BtnCollect")
        Value = 1
    }
    
    @IBAction func BtnOne(_ sender: Any) {
        TxtNumbers.text = String(TxtNumbers.text!) + String(1)
    }
    
    @IBAction func BtnTwo(_ sender: Any) {
        TxtNumbers.text = String(TxtNumbers.text!) + String(2)
    }
    @IBAction func BtnThree(_ sender: Any) {
        TxtNumbers.text = String(TxtNumbers.text!) + String(3)
    }
    
    @IBAction func BtnFour(_ sender: Any) {
        TxtNumbers.text = String(TxtNumbers.text!) + String(4)
    }
    
    @IBAction func BtnFive(_ sender: Any) {
        TxtNumbers.text = String(TxtNumbers.text!) + String(5)
    }
    
    @IBAction func BtnSix(_ sender: Any) {
        TxtNumbers.text = String(TxtNumbers.text!) + String(6)
    }
    
    @IBAction func BtnSeven(_ sender: Any) {
        TxtNumbers.text = String(TxtNumbers.text!) + String(7)
    }
    
    @IBAction func BtnEight(_ sender: Any) {
        TxtNumbers.text = String(TxtNumbers.text!) + String(8)
    }
    
    @IBAction func TxtNine(_ sender: Any) {
        TxtNumbers.text = String(TxtNumbers.text!) + String(9)
    }
    
    @IBAction func BtnZero(_ sender: Any) {
        TxtNumbers.text = String(TxtNumbers.text!) + String(0)
    }
    
    @IBAction func BtnHistory(_ sender: Any) {
        
    }
    
    @IBAction func BtnDouble(_ sender: Any) {
        TxtNumbers.text = String(TxtNumbers.text!) + String(".")
    }
    
    @IBAction func BtnEqual(_ sender: Any) {
        if TxtNumbers.text != "" {
            if ValueOne != 0.0 {
                ValueTwo = Double(TxtNumbers.text!)!
                Calculater(Calc: Value)
                TxtNumbers.text = ""
                            }
        }
    }
    
    func Calculater(Calc: Int){
        switch Calc{
        case 1 :
            self.TxtNumbers.placeholder = String(self.ValueOne + self.ValueTwo)
            self.ValueOne = self.ValueOne + self.ValueTwo
        case 2 :
            self.TxtNumbers.placeholder = String(self.ValueOne - self.ValueTwo)
            self.ValueOne = self.ValueOne - self.ValueTwo
        case 3 :
            self.TxtNumbers.placeholder = String(self.ValueOne * self.ValueTwo)
            self.ValueOne = self.ValueOne * self.ValueTwo
        case 4 :
            self.TxtNumbers.placeholder = String(self.ValueOne / self.ValueTwo)
            self.ValueOne = self.ValueOne / self.ValueTwo
        case 5 :
            print("")
           // self.TxtNumbers.placeholder = String(self.ValueOne % self.ValueTwo)
            // self.ValueOne = Double(self.ValueOne % self.ValueTwo)
        default:
            print("")
        }
    }
}

