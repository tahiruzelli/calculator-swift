//
//  ViewController.swift
//  calculator
//
//  Created by Tahir Uzelli on 31.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var screenHeight : Double?
    var screenWidth : Double?
    
    let myOneButton = UIButton()
    let myTwoButton = UIButton()
    let myThreeButton = UIButton()
    let myFourButton = UIButton()
    let myFiveButton = UIButton()
    let mySixButton = UIButton()
    let mySevenButton = UIButton()
    let myEightButton = UIButton()
    let myNineButton = UIButton()
    let myZeroButton = UIButton()
    
    let myCalculateButton = UIButton()
    let mySumButton = UIButton()
    let myMinusButton = UIButton()
    let myTimesButton = UIButton()
    let myDivideButton = UIButton()
    let myClearButton = UIButton()
    let myBackSpaceButton = UIButton()
    
    let myEmptyButton = UIButton()
    let myEmptyButton2 = UIButton()
    
    let myField = UILabel()
    
    var buttonHeight : Double?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        screenWidth = view.frame.width
        screenHeight = view.frame.height
        buttonHeight = screenWidth!/4
        
        myZeroButton.frame = CGRect(x: screenWidth!/4, y: screenHeight!-buttonHeight!, width: buttonHeight!, height: buttonHeight!)
        myEmptyButton.frame = CGRect(x: 0, y: screenHeight!-buttonHeight!, width: buttonHeight!, height: buttonHeight!)
        myEmptyButton2.frame = CGRect(x: 2*screenWidth!/4, y: screenHeight!-buttonHeight!, width: buttonHeight!, height: buttonHeight!)
        
        
        myOneButton.frame = CGRect(x: 0, y: screenHeight!-2*buttonHeight!, width: buttonHeight!, height: buttonHeight!)
        myTwoButton.frame = CGRect(x: screenWidth!/4, y: screenHeight!-2*buttonHeight!, width: buttonHeight!, height: buttonHeight!)
        myThreeButton.frame = CGRect(x: 2*screenWidth!/4, y: screenHeight!-2*buttonHeight!, width: buttonHeight!, height: buttonHeight!)
        
        myFourButton.frame = CGRect(x: 0, y: screenHeight!-3*buttonHeight!, width: buttonHeight!, height: buttonHeight!)
        myFiveButton.frame = CGRect(x: screenWidth!/4, y: screenHeight!-3*buttonHeight!, width: buttonHeight!, height: buttonHeight!)
        mySixButton.frame = CGRect(x: 2*screenWidth!/4, y: screenHeight!-3*buttonHeight!, width: buttonHeight!, height: buttonHeight!)
        
        mySevenButton.frame = CGRect(x: 0, y: screenHeight!-4*buttonHeight!, width: buttonHeight!, height: buttonHeight!)
        myEightButton.frame = CGRect(x: screenWidth!/4, y: screenHeight!-4*buttonHeight!, width: buttonHeight!, height: buttonHeight!)
        myNineButton.frame = CGRect(x: 2*screenWidth!/4, y: screenHeight!-4*buttonHeight!, width: buttonHeight!, height: buttonHeight!)
        
        myClearButton.frame = CGRect(x: 0, y: screenHeight!-5*buttonHeight!, width: buttonHeight!, height: buttonHeight!)
        myDivideButton.frame = CGRect(x: screenWidth!/4, y: screenHeight!-5*buttonHeight!, width: buttonHeight!, height: buttonHeight!)
        myTimesButton.frame = CGRect(x: 2*screenWidth!/4, y: screenHeight!-5*buttonHeight!, width: buttonHeight!, height: buttonHeight!)
        myBackSpaceButton.frame = CGRect(x: 3*screenWidth!/4, y: screenHeight!-5*buttonHeight!, width: buttonHeight!, height: buttonHeight!)
        
        myMinusButton.frame = CGRect(x: 3*screenWidth!/4, y: screenHeight!-4*buttonHeight!, width: buttonHeight!, height: buttonHeight!)
        mySumButton.frame = CGRect(x: 3*screenWidth!/4, y: screenHeight!-3*buttonHeight!, width: buttonHeight!, height: buttonHeight!)
        
        myCalculateButton.frame = CGRect(x: 3*screenWidth!/4, y: screenHeight!-2*buttonHeight!, width: buttonHeight!, height: 2*buttonHeight!)
        
        myField.frame = CGRect(x: 0, y: 50, width: screenWidth!, height: buttonHeight!)
        myField.text = ""
        myField.textAlignment = .right
        myField.font = myField.font.withSize(50)
        view.addSubview(myField)
        

        setNumberButtonUI(button: myOneButton, title: "1")
        setNumberButtonUI(button: myTwoButton, title: "2")
        setNumberButtonUI(button: myThreeButton, title: "3")
        setNumberButtonUI(button: myFourButton, title: "4")
        setNumberButtonUI(button: myFiveButton, title: "5")
        setNumberButtonUI(button: mySixButton, title: "6")
        setNumberButtonUI(button: mySevenButton, title: "7")
        setNumberButtonUI(button: myEightButton, title: "8")
        setNumberButtonUI(button: myNineButton, title: "9")
        setNumberButtonUI(button: myZeroButton, title: "0")
        setNumberButtonUI(button: myEmptyButton, title: "")
        setNumberButtonUI(button: myEmptyButton2, title: "")
        
        setOperationButtonUI(button: myClearButton,title: "C")
        setOperationButtonUI(button: myDivideButton,title: "÷")
        setOperationButtonUI(button: myTimesButton,title: "×")
        setOperationButtonUI(button: myBackSpaceButton,title: "⌫")
        setOperationButtonUI(button: myMinusButton,title: "-")
        setOperationButtonUI(button: mySumButton,title: "+")
        
        myCalculateButton.backgroundColor = UIColor(hexString: colorBlue)
        myCalculateButton.setTitle("=", for: UIControl.State.normal)
        myCalculateButton.setTitleColor(.white, for: UIControl.State.normal)
        myCalculateButton.titleLabel?.font = .systemFont(ofSize: 30)
        myCalculateButton.layer.borderWidth = 1
        myCalculateButton.layer.borderColor = UIColor.gray.cgColor
        view.addSubview(myCalculateButton)
        
        myOneButton.addTarget(self, action: #selector(ViewController.onOneButtonPressed), for: UIControl.Event.touchUpInside)
        myTwoButton.addTarget(self, action: #selector(ViewController.onTwoButtonPressed), for: UIControl.Event.touchUpInside)
        myThreeButton.addTarget(self, action: #selector(ViewController.onThreeButtonPressed), for: UIControl.Event.touchUpInside)
        myFourButton.addTarget(self, action: #selector(ViewController.onFourButtonPressed), for: UIControl.Event.touchUpInside)
        myFiveButton.addTarget(self, action: #selector(ViewController.onFiveButtonPressed), for: UIControl.Event.touchUpInside)
        mySixButton.addTarget(self, action: #selector(ViewController.onSixButtonPressed), for: UIControl.Event.touchUpInside)
        mySevenButton.addTarget(self, action: #selector(ViewController.onSevenButtonPressed), for: UIControl.Event.touchUpInside)
        myEightButton.addTarget(self, action: #selector(ViewController.onEightButtonPressed), for: UIControl.Event.touchUpInside)
        myNineButton.addTarget(self, action: #selector(ViewController.onNineButtonPressed), for: UIControl.Event.touchUpInside)
        myZeroButton.addTarget(self, action: #selector(ViewController.onZeroButtonPressed), for: UIControl.Event.touchUpInside)
        
        myCalculateButton.addTarget(self, action: #selector(ViewController.onCalculateButtonPressed), for: UIControl.Event.touchUpInside)
        myClearButton.addTarget(self, action: #selector(ViewController.onClearButtonPressed), for: UIControl.Event.touchUpInside)
        myDivideButton.addTarget(self, action: #selector(ViewController.onDivideButtonPressed), for: UIControl.Event.touchUpInside)
        myTimesButton.addTarget(self, action: #selector(ViewController.onTimesButtonPressed), for: UIControl.Event.touchUpInside)
        myBackSpaceButton.addTarget(self, action: #selector(ViewController.onBackSpaceButtonPressed), for: UIControl.Event.touchUpInside)
        myMinusButton.addTarget(self, action: #selector(ViewController.onMinusButtonPressed), for: UIControl.Event.touchUpInside)
        mySumButton.addTarget(self, action: #selector(ViewController.onSumButtonPressed), for: UIControl.Event.touchUpInside)
        
        
    }
    
    func setOperationButtonUI(button : UIButton,title : String){
        button.backgroundColor =  UIColor(hexString: colorLightGray)
        button.setTitle(title, for: UIControl.State.normal)
        button.setTitleColor(UIColor(hexString: colorBlue), for: UIControl.State.normal)
        button.titleLabel?.font = .systemFont(ofSize: 30)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.gray.cgColor
        
        view.addSubview(button)
    }
    
    func setNumberButtonUI(button : UIButton, title : String ){
        button.setTitle(title, for: UIControl.State.normal)
        button.setTitleColor(UIColor(hexString: colorLightBlack), for: UIControl.State.normal)
        button.titleLabel?.font = .systemFont(ofSize: 30)
        button.backgroundColor = .clear
        button.backgroundColor = .white
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.gray.cgColor
        view.addSubview(button)
    }

    @objc func onOneButtonPressed(){
        myField.text! += "1"
    }
    @objc func onTwoButtonPressed(){
        myField.text! += "2"
    }
    @objc func onThreeButtonPressed(){
        myField.text! += "3"
    }
    @objc func onFourButtonPressed(){
        myField.text! += "4"
    }
    @objc func onFiveButtonPressed(){
        myField.text! += "5"
    }
    @objc func onSixButtonPressed(){
        myField.text! += "6"
    }
    @objc func onSevenButtonPressed(){
        myField.text! += "7"
    }
    @objc func onEightButtonPressed(){
        myField.text! += "8"
    }
    
    @objc func onNineButtonPressed(){
        myField.text! += "9"
    }
    @objc func onZeroButtonPressed(){
        myField.text! += "0"
    }
    
    @objc func onCalculateButtonPressed(){
        print("")
    }
    @objc func onClearButtonPressed(){
        myField.text = ""
    }
    @objc func onDivideButtonPressed(){
        myField.text! += "÷"
    }
    @objc func onTimesButtonPressed(){
        myField.text! += "×"
    }
    @objc func onSumButtonPressed(){
        myField.text! += "+"
    }
    
    @objc func onMinusButtonPressed(){
        myField.text! += "-"
    }
    @objc func onBackSpaceButtonPressed(){
    
        if(myField.text!.count>0){
            myField.text!.remove(at: myField.text!.index(before: myField.text!.endIndex))
        }
    }
    
}


