//
//  ViewController.swift
//  JoyStick
//
//  Created by Rsllwstbrk on 23.11.23.
//

import UIKit



protocol JoystickViewDelegate: AnyObject {
    func printInfo ()
}


class JoystickView: UIView {
    
    @objc func printInformation() {
        delegate?.printInfo()
    }
    
    weak var delegate: JoystickViewDelegate?
    
    let leftCrossUpButton = UIButton(type: .system)
//    let leftCrossDownButton = UIButton()
//    let leftCrossLeftButton = UIButton()
//    let leftCrossRightButton = UIButton()
//    let touchPadButton = UIButton()
//    let screenshotButton = UIButton()
//    let optionsButton = UIButton()
//    let mainMenuButton = UIButton()
//    let microphoneButton = UIButton()
//    let L3upButton = UIButton()
//    let L3downButton = UIButton()
//    let L3leftButton = UIButton()
//    let L3rightButton = UIButton()
//    let L3ButtonPressed = UIButton()
//    let R3upButton = UIButton()
//    let R3downButton = UIButton()
//    let R3leftButton = UIButton()
//    let R3rightButton = UIButton()
//    let R3buttonPressed = UIButton()
//    let squareButton = UIButton()
//    let triangleButtom = UIButton()
//    let circleButton = UIButton()
//    let crossButton = UIButton()
//    let L1Button = UIButton()
//    let L2Button = UIButton()
//    let R1Button = UIButton()
//    let R2Button = UIButton()
//    let slotForHeadphones = UIButton()
//    let slotForChargingCord = UIButton()
    
    let controllerImageTowardsPlayer = UIImageView()
    let controllerImageUpperSide = UIImageView()
    let reddotImage = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
//        let redDot = UIImage(named: "reddot2.png")

                addSubview(controllerImageUpperSide)
                controllerImageUpperSide.image = UIImage(named: "pad2.jpeg")?.withRenderingMode(.alwaysOriginal)
                controllerImageUpperSide.translatesAutoresizingMaskIntoConstraints = false
                controllerImageUpperSide.clipsToBounds = false
                controllerImageUpperSide.contentMode = .scaleAspectFill
                controllerImageUpperSide.translatesAutoresizingMaskIntoConstraints = false
                controllerImageUpperSide.heightAnchor.constraint(equalToConstant: 425).isActive = true
                controllerImageUpperSide.widthAnchor.constraint(equalToConstant: 425).isActive = true
                controllerImageUpperSide.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0).isActive = true
                controllerImageUpperSide.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -170).isActive = true
                
                
                addSubview(controllerImageTowardsPlayer)
                controllerImageTowardsPlayer.image = UIImage(named: "pad.webp")?.withRenderingMode(.alwaysOriginal)
                controllerImageTowardsPlayer.translatesAutoresizingMaskIntoConstraints = false
                controllerImageTowardsPlayer.clipsToBounds = false
                controllerImageTowardsPlayer.contentMode = .scaleAspectFill
                controllerImageTowardsPlayer.translatesAutoresizingMaskIntoConstraints = false
                controllerImageTowardsPlayer.heightAnchor.constraint(equalToConstant: 350).isActive = true
                controllerImageTowardsPlayer.widthAnchor.constraint(equalToConstant: 350).isActive = true
                controllerImageTowardsPlayer.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0).isActive = true
                controllerImageTowardsPlayer.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 170).isActive = true
        
        addSubview(leftCrossUpButton)

        leftCrossUpButton.translatesAutoresizingMaskIntoConstraints = false
//        leftCrossUpButton.setImage(redDot, for: .normal)
        leftCrossUpButton.setTitle("Button Pressed", for: .normal)
        leftCrossUpButton.addTarget(self, action: #selector(printInformation), for: .touchUpInside)
        leftCrossUpButton.widthAnchor.constraint(equalToConstant: 10).isActive = true
        leftCrossUpButton.heightAnchor.constraint(equalToConstant: 10).isActive = true
        leftCrossUpButton.backgroundColor = .blue
        leftCrossUpButton.clipsToBounds = true
        leftCrossUpButton.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: -117).isActive = true
        leftCrossUpButton.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 95).isActive = true
        //        leftCrossUpButton.addTarget(self, action: #selector(buttonHovered), for: .touchDragEnter)
        //        leftCrossUpButton.addTarget(self, action: #selector(buttonUnhovered), for: .touchDragExit)
        
        
        
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}




class Joystick_View_Controller: UIViewController, JoystickViewDelegate {
    
    func printInfo() {
        print("Button Tapped")
    }
    

    let customView = JoystickView()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        view.addSubview(customView)
        customView.delegate = self
//        customView.printInformation()
        customView.translatesAutoresizingMaskIntoConstraints = false
        customView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        customView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        customView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        customView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
    }


}

