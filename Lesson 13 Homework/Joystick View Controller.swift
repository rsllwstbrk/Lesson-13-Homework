//
//  Joystick View Controller.swift
//  Lesson 13 Homework
//
//  Created by Rsllwstbrk on 23.11.23.
//

import UIKit

protocol JoystickButtonsDelegate: AnyObject {
    
}

class JoystickView: UIView {
    
    weak var delegate: JoystickButtonsDelegate?
    
    let leftCrossUpButton = UIButton()
    let leftCrossDownButton = UIButton()
    let leftCrossLeftButton = UIButton()
    let leftCrossRightButton = UIButton()
    let touchPadButton = UIButton()
    let screenshotButton = UIButton()
    let optionsButton = UIButton()
    let mainMenuButton = UIButton()
    let microphoneButton = UIButton()
    let L3upButton = UIButton()
    let L3downButton = UIButton()
    let L3leftButton = UIButton()
    let L3rightButton = UIButton()
    let L3ButtonPressed = UIButton()
    let R3upButton = UIButton()
    let R3downButton = UIButton()
    let R3leftButton = UIButton()
    let R3rightButton = UIButton()
    let R3buttonPressed = UIButton()
    let squareButton = UIButton()
    let triangleButtom = UIButton()
    let circleButton = UIButton()
    let crossButton = UIButton()
    let L1Button = UIButton()
    let L2Button = UIButton()
    let R1Button = UIButton()
    let R2Button = UIButton()
    
    let controllerImage = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(controllerImage)
        controllerImage.image = UIImage(named: "controller.webp")?.withRenderingMode(.alwaysOriginal)
        controllerImage.translatesAutoresizingMaskIntoConstraints = false
        controllerImage.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        controllerImage.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
}
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
    
    
    


class Joystick_View_Controller: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

}
