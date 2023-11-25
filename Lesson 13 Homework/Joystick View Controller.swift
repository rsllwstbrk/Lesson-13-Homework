//
//  ViewController.swift
//  JoyStick
//
//  Created by Rsllwstbrk on 23.11.23.
//

import UIKit



protocol JoystickViewDelegate: AnyObject {
    func leftCrossUpButtonTapped()
    func leftCrossUpButtonUntapped()
    
    func leftCrossDownButtonTapped()
    func leftCrossDownButtonUntapped()
    
    func leftCrossLeftButtonTapped()
    func leftCrossLeftButtonUntapped()
    
    func leftCrossRightButtonTapped()
    func leftCrossRightButtonUntapped()
    
    func touchPadButtonTapped()
    func touchPadButtonUntapped()
    
    func screenshotButtonTapped()
    func screenshotButtonUntapped()
    
    func optionsButtonTapped()
    func optionsButtonUntapped()
    
    func mainMenuButtonTapped()
    func mainMenuButtonUntapped()
    
    func microphoneButtonTapped()
    func microphoneButtonUntapped()
    
    func slotForHeadphonesConnected()
    func slotForHeadphonesDisconnected()
    
    func L3upTapped()
    func L3upUntapped()
    
    func L3downTapped()
    func L3downUntapped()
    
    func L3leftTapped()
    func L3leftUntapped()
    
    func L3rightTapped()
    func L3rightUntapped()
    
    func L3Tapped()
    func L3Untapped()
    
    func R3upTapped()
    func R3upUntapped()
    
    func R3downTapped()
    func R3downUntapped()
    
    func R3leftTapped()
    func R3leftUntapped()
    
    func R3rightTapped()
    func R3rightUntapped()
    
    func R3Tapped()
    func R3Untapped()
    
    func squareButtonTapped()
    func squareButtonUntapped()
    
    func triangleButtonTapped()
    func triangleButtonUntapped()
    
    func circleButtonTapped()
    func circleButtonUntapped()
    
    func crossButtonTapped()
    func crossButtonUntapped()
    
    func L1ButtonTapped()
    func L1ButtonUntapped()
    
    func L2ButtonTapped()
    func L2ButtonUntapped()
    
    func R1ButtonTapped()
    func R1ButtonUntapped()
    
    func R2ButtonTapped()
    func R2ButtonUntapped()
    
    func slotForChargingConnected()
    func slotForChargingDisconnected()
}







class JoystickView: UIView {
    
    
    @objc func leftCrossUpButtonTapped() {
        delegate?.leftCrossUpButtonTapped()
        leftCrossUpButton.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        print("Left Cross Up Button Tapped")
    }
    @objc func leftCrossUpButtonUntapped() {
        delegate?.leftCrossUpButtonUntapped()
        leftCrossUpButton.transform = CGAffineTransform(scaleX: 1, y: 1)
    }
    
    @objc func leftCrossDownButtonTapped() {
        delegate?.leftCrossDownButtonTapped()
        leftCrossDownButton.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        print("Left Cross Down Button Tapped")
    }
    @objc func leftCrossDownButtonUntapped() {
        delegate?.leftCrossDownButtonUntapped()
        leftCrossDownButton.transform = CGAffineTransform(scaleX: 1, y: 1)
    }
    
    @objc func leftCrossLeftButtonTapped() {
        delegate?.leftCrossLeftButtonTapped()
        leftCrossLeftButton.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        print("Left Cross Left Button Tapped")
    }
    @objc func leftCrossLeftButtonUntapped() {
        delegate?.leftCrossLeftButtonUntapped()
        leftCrossLeftButton.transform = CGAffineTransform(scaleX: 1, y: 1)
    }
    
    @objc func leftCrossRightButtonTapped() {
        delegate?.leftCrossRightButtonTapped()
        leftCrossRightButton.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        print("Left Cross Right Button Tapped")
    }
    @objc func leftCrossRightButtonUntapped() {
        delegate?.leftCrossRightButtonUntapped()
        leftCrossRightButton.transform = CGAffineTransform(scaleX: 1, y: 1)
    }
    
    @objc func touchPadButtonTapped() {
        delegate?.touchPadButtonTapped()
        touchPadButton.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        print("Touchpad Button Tapped")
    }
    @objc func touchPadButtonUntapped() {
        delegate?.touchPadButtonUntapped()
        touchPadButton.transform = CGAffineTransform(scaleX: 1, y: 1)
    }
    
    @objc func screenshotButtonTapped() {
        delegate?.screenshotButtonTapped()
        screenshotButton.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        print("Screenshot Button Tapped")
    }
    @objc func screenshotButtonUntapped() {
        delegate?.screenshotButtonUntapped()
        screenshotButton.transform = CGAffineTransform(scaleX: 1, y: 1)
    }
    
    @objc func optionsButtonTapped() {
        delegate?.optionsButtonTapped()
        optionsButton.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        print("Options Button Tapped")
    }
    @objc func optionsButtonUntapped() {
        delegate?.optionsButtonUntapped()
        optionsButton.transform = CGAffineTransform(scaleX: 1, y: 1)
    }
    
    @objc func mainMenuButtonTapped() {
        delegate?.mainMenuButtonTapped()
        mainMenuButton.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        print("Main Menu Button Tapped")
    }
    @objc func mainMenuButtonUntapped() {
        delegate?.mainMenuButtonUntapped()
        mainMenuButton.transform = CGAffineTransform(scaleX: 1, y: 1)
    }
    
    @objc func microphoneButtonTapped() {
        delegate?.microphoneButtonTapped()
        microphoneButton.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        print("Microphone Button Tapped")
    }
    @objc func microphoneButtonUntapped() {
        delegate?.microphoneButtonUntapped()
        microphoneButton.transform = CGAffineTransform(scaleX: 1, y: 1)
    }
    
    @objc func slotForHeadphonesConnected() {
        delegate?.slotForHeadphonesConnected()
        slotForHeadphones.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        print("Slot for Haedphones Connected")
    }
    @objc func slotForHeadphonesDisconnected() {
        delegate?.slotForHeadphonesDisconnected()
        slotForHeadphones.transform = CGAffineTransform(scaleX: 1, y: 1)
    }
    
    @objc func L3upTapped() {
        delegate?.L3upTapped()
        L3up.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        print("L3 Up Tapped")
    }
    @objc func L3upUntapped() {
        delegate?.L3upUntapped()
        L3up.transform = CGAffineTransform(scaleX: 1, y: 1)
    }
    
    @objc func L3downTapped() {
        delegate?.L3downTapped()
        L3down.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        print("L3 Down Tapped")
    }
    @objc func L3downUntapped() {
        delegate?.L3downUntapped()
        L3down.transform = CGAffineTransform(scaleX: 1, y: 1)
    }
  
    @objc func L3leftTapped() {
        delegate?.L3leftTapped()
        L3left.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        print("L3 Left Tapped")
    }
    @objc func L3leftUntapped() {
        delegate?.L3leftUntapped()
        L3left.transform = CGAffineTransform(scaleX: 1, y: 1)
    }
    
    @objc func L3rightTapped() {
        delegate?.L3rightTapped()
        L3right.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        print("L3 Right Tapped")
    }
    @objc func L3rightUntapped() {
        delegate?.L3rightUntapped()
        L3right.transform = CGAffineTransform(scaleX: 1, y: 1)
    }
    
    @objc func L3Tapped() {
        delegate?.L3Tapped()
        L3.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        print("L3 Pressed")
    }
    @objc func L3Untapped() {
        delegate?.L3Untapped()
        L3.transform = CGAffineTransform(scaleX: 1, y: 1)
    }

    @objc func R3upTapped() {
        delegate?.R3upTapped()
        R3up.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        print("R3 Up Pressed")
    }
    @objc func R3upUntapped() {
        delegate?.R3upUntapped()
        R3up.transform = CGAffineTransform(scaleX: 1, y: 1)
    }
    
    @objc func R3downTapped() {
        delegate?.R3downTapped()
        R3down.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        print("R3 Down Pressed")
    }
    @objc func R3downUntapped() {
        delegate?.R3downUntapped()
        R3down.transform = CGAffineTransform(scaleX: 1, y: 1)
    }
    
    @objc func R3leftTapped() {
        delegate?.R3leftTapped()
        R3left.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        print("R3 Left Pressed")
    }
    @objc func R3leftUntapped() {
        delegate?.R3leftUntapped()
        R3left.transform = CGAffineTransform(scaleX: 1, y: 1)
    }
    
    @objc func R3rightTapped() {
        delegate?.R3rightTapped()
        R3right.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        print("R3 Right Pressed")
    }
    @objc func R3rightUntapped() {
        delegate?.R3rightUntapped()
        R3right.transform = CGAffineTransform(scaleX: 1, y: 1)
    }
    
    @objc func R3Tapped() {
        delegate?.R3Tapped()
        R3.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        print("R3 Pressed")
    }
    @objc func R3Untapped() {
        delegate?.R3Untapped()
        R3.transform = CGAffineTransform(scaleX: 1, y: 1)
    }
    
    @objc func squareButtonTapped() {
        delegate?.squareButtonTapped()
        squareButton.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        print("Square Button Pressed")
    }
    @objc func squareButtonUntapped() {
        delegate?.squareButtonUntapped()
        squareButton.transform = CGAffineTransform(scaleX: 1, y: 1)
    }
    
    @objc func triangleButtonTapped() {
        delegate?.triangleButtonTapped()
        triangleButton.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        print("Triangle Button Pressed")
    }
    @objc func triangleButtonUntapped() {
        delegate?.triangleButtonUntapped()
        triangleButton.transform = CGAffineTransform(scaleX: 1, y: 1)
    }

    @objc func circleButtonTapped() {
        delegate?.circleButtonTapped()
        circleButton.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        print("Circle Button Pressed")
    }
    @objc func circleButtonUntapped() {
        delegate?.circleButtonUntapped()
        circleButton.transform = CGAffineTransform(scaleX: 1, y: 1)
    }
    
    @objc func crossButtonTapped() {
        delegate?.crossButtonTapped()
        crossButton.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        print("Cross Button Pressed")
    }
    @objc func crossButtonUntapped() {
        delegate?.crossButtonUntapped()
        crossButton.transform = CGAffineTransform(scaleX: 1, y: 1)
    }
    
    @objc func L1ButtonTapped() {
        delegate?.L1ButtonTapped()
        L1Button.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        print("L1 Button Pressed")
    }
    @objc func L1ButtonUntapped() {
        delegate?.L1ButtonUntapped()
        L1Button.transform = CGAffineTransform(scaleX: 1, y: 1)
    }
    
    @objc func L2ButtonTapped() {
        delegate?.L2ButtonTapped()
        L2Button.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        print("L2 Button Pressed")
    }
    @objc func L2ButtonUntapped() {
        delegate?.L2ButtonUntapped()
        L2Button.transform = CGAffineTransform(scaleX: 1, y: 1)
    }
    
    @objc func R1ButtonTapped() {
        delegate?.R1ButtonTapped()
        R1Button.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        print("R1 Button Pressed")
    }
    @objc func R1ButtonUntapped() {
        delegate?.R1ButtonUntapped()
        R1Button.transform = CGAffineTransform(scaleX: 1, y: 1)
    }
    
    @objc func R2ButtonTapped() {
        delegate?.R2ButtonTapped()
        R2Button.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        print("R2 Button Pressed")
    }
    @objc func R2ButtonUntapped() {
        delegate?.R2ButtonUntapped()
        R2Button.transform = CGAffineTransform(scaleX: 1, y: 1)
    }

    @objc func slotForChargingConnected() {
        delegate?.slotForChargingConnected()
        slotForCharging.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        print("Slot for Charging Connected")
    }
    @objc func slotForChargingDisconnected() {
        delegate?.slotForChargingDisconnected()
        slotForCharging.transform = CGAffineTransform(scaleX: 1, y: 1)
    }
 
    
    weak var delegate: JoystickViewDelegate?
    
    let leftCrossUpButton = UIButton(type: .system)
    let leftCrossDownButton = UIButton()
    let leftCrossLeftButton = UIButton()
    let leftCrossRightButton = UIButton()
    let touchPadButton = UIButton()
    let screenshotButton = UIButton()
    let optionsButton = UIButton()
    let mainMenuButton = UIButton()
    let microphoneButton = UIButton()
    let L3up = UIButton()
    let L3down = UIButton()
    let L3left = UIButton()
    let L3right = UIButton()
    let L3 = UIButton()
    let R3up = UIButton()
    let R3down = UIButton()
    let R3left = UIButton()
    let R3right = UIButton()
    let R3 = UIButton()
    let squareButton = UIButton()
    let triangleButton = UIButton()
    let circleButton = UIButton()
    let crossButton = UIButton()
    let L1Button = UIButton()
    let L2Button = UIButton()
    let R1Button = UIButton()
    let R2Button = UIButton()
    let slotForHeadphones = UIButton()
    let slotForCharging = UIButton()
    
    let controllerImageTowardsPlayer = UIImageView()
    let controllerImageUpperSide = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
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
        leftCrossUpButton.frame = CGRect(x: 20, y: 20, width: 18, height: 20)
        leftCrossUpButton.clipsToBounds = true
        leftCrossUpButton.backgroundColor = .red
        leftCrossUpButton.layer.cornerRadius = 0.5 * leftCrossUpButton.bounds.size.width
        leftCrossUpButton.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: -117).isActive = true
        leftCrossUpButton.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 95).isActive = true
        leftCrossUpButton.widthAnchor.constraint(equalToConstant: 18).isActive = true
        leftCrossUpButton.heightAnchor.constraint(equalToConstant: 18).isActive = true
        leftCrossUpButton.addTarget(self, action: #selector(leftCrossUpButtonTapped), for: .touchDown)
        leftCrossUpButton.addTarget(self, action: #selector(leftCrossUpButtonUntapped), for: .touchUpInside)
        leftCrossUpButton.layer.borderWidth = 1
        
        
        addSubview(leftCrossDownButton)
        leftCrossDownButton.translatesAutoresizingMaskIntoConstraints = false
        leftCrossDownButton.frame = CGRect(x: 20, y: 20, width: 18, height: 20)
        leftCrossDownButton.clipsToBounds = true
        leftCrossDownButton.backgroundColor = .red
        leftCrossDownButton.layer.cornerRadius = 0.5 * leftCrossDownButton.bounds.size.width
        leftCrossDownButton.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: -117).isActive = true
        leftCrossDownButton.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 136).isActive = true
        leftCrossDownButton.widthAnchor.constraint(equalToConstant: 18).isActive = true
        leftCrossDownButton.heightAnchor.constraint(equalToConstant: 18).isActive = true
        leftCrossDownButton.addTarget(self, action: #selector(leftCrossDownButtonTapped), for: .touchDown)
        leftCrossDownButton.addTarget(self, action: #selector(leftCrossDownButtonUntapped), for: .touchUpInside)
        leftCrossDownButton.layer.borderWidth = 1
        
        
        addSubview(leftCrossLeftButton)
        leftCrossLeftButton.translatesAutoresizingMaskIntoConstraints = false
        leftCrossLeftButton.frame = CGRect(x: 20, y: 20, width: 18, height: 20)
        leftCrossLeftButton.clipsToBounds = true
        leftCrossLeftButton.backgroundColor = .red
        leftCrossLeftButton.layer.cornerRadius = 0.5 * leftCrossLeftButton.bounds.size.width
        leftCrossLeftButton.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: -138).isActive = true
        leftCrossLeftButton.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 115).isActive = true
        leftCrossLeftButton.widthAnchor.constraint(equalToConstant: 18).isActive = true
        leftCrossLeftButton.heightAnchor.constraint(equalToConstant: 18).isActive = true
        leftCrossLeftButton.addTarget(self, action: #selector(leftCrossLeftButtonTapped), for: .touchDown)
        leftCrossLeftButton.addTarget(self, action: #selector(leftCrossLeftButtonUntapped), for: .touchUpInside)
        leftCrossLeftButton.layer.borderWidth = 1

        
        addSubview(leftCrossRightButton)
        leftCrossRightButton.translatesAutoresizingMaskIntoConstraints = false
        leftCrossRightButton.frame = CGRect(x: 20, y: 20, width: 18, height: 20)
        leftCrossRightButton.clipsToBounds = true
        leftCrossRightButton.backgroundColor = .red
        leftCrossRightButton.layer.cornerRadius = 0.5 * leftCrossRightButton.bounds.size.width
        leftCrossRightButton.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: -96).isActive = true
        leftCrossRightButton.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 115).isActive = true
        leftCrossRightButton.widthAnchor.constraint(equalToConstant: 18).isActive = true
        leftCrossRightButton.heightAnchor.constraint(equalToConstant: 18).isActive = true
        leftCrossRightButton.addTarget(self, action: #selector(leftCrossRightButtonTapped), for: .touchDown)
        leftCrossRightButton.addTarget(self, action: #selector(leftCrossRightButtonUntapped), for: .touchUpInside)
        leftCrossRightButton.layer.borderWidth = 1

        
        addSubview(touchPadButton)
        touchPadButton.translatesAutoresizingMaskIntoConstraints = false
        touchPadButton.frame = CGRect(x: 50, y: 50, width: 40, height: 40)
        touchPadButton.clipsToBounds = true
        touchPadButton.backgroundColor = .blue
        touchPadButton.layer.cornerRadius = 0.2 * touchPadButton.bounds.size.width
        touchPadButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        touchPadButton.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 88).isActive = true
        touchPadButton.widthAnchor.constraint(equalToConstant: 115).isActive = true
        touchPadButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        touchPadButton.addTarget(self, action: #selector(touchPadButtonTapped), for: .touchDown)
        touchPadButton.addTarget(self, action: #selector(touchPadButtonUntapped), for: .touchUpInside)
        touchPadButton.layer.borderWidth = 1
        touchPadButton.layer.borderColor = UIColor.black.cgColor
        
        
        addSubview(screenshotButton)
        screenshotButton.translatesAutoresizingMaskIntoConstraints = false
        screenshotButton.frame = CGRect(x: 20, y: 20, width: 18, height: 20)
        screenshotButton.clipsToBounds = true
        screenshotButton.backgroundColor = .cyan
        screenshotButton.layer.cornerRadius = 0.5 * screenshotButton.bounds.size.width
        screenshotButton.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: -87).isActive = true
        screenshotButton.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 75).isActive = true
        screenshotButton.widthAnchor.constraint(equalToConstant: 15).isActive = true
        screenshotButton.heightAnchor.constraint(equalToConstant: 15).isActive = true
        screenshotButton.addTarget(self, action: #selector(screenshotButtonTapped), for: .touchDown)
        screenshotButton.addTarget(self, action: #selector(screenshotButtonUntapped), for: .touchUpInside)
        screenshotButton.layer.borderWidth = 1
    
        
        addSubview(optionsButton)
        optionsButton.translatesAutoresizingMaskIntoConstraints = false
        optionsButton.frame = CGRect(x: 20, y: 20, width: 18, height: 20)
        optionsButton.clipsToBounds = true
        optionsButton.backgroundColor = .purple
        optionsButton.layer.cornerRadius = 0.5 * optionsButton.bounds.size.width
        optionsButton.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 87).isActive = true
        optionsButton.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 75).isActive = true
        optionsButton.widthAnchor.constraint(equalToConstant: 15).isActive = true
        optionsButton.heightAnchor.constraint(equalToConstant: 15).isActive = true
        optionsButton.addTarget(self, action: #selector(optionsButtonTapped), for: .touchDown)
        optionsButton.addTarget(self, action: #selector(optionsButtonUntapped), for: .touchUpInside)
        optionsButton.layer.borderWidth = 1
        
        
        addSubview(mainMenuButton)
        mainMenuButton.translatesAutoresizingMaskIntoConstraints = false
        mainMenuButton.frame = CGRect(x: 20, y: 20, width: 18, height: 20)
        mainMenuButton.clipsToBounds = true
        mainMenuButton.backgroundColor = .green
        mainMenuButton.layer.cornerRadius = 0.5 * mainMenuButton.bounds.size.width
        mainMenuButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        mainMenuButton.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 168).isActive = true
        mainMenuButton.widthAnchor.constraint(equalToConstant: 15).isActive = true
        mainMenuButton.heightAnchor.constraint(equalToConstant: 15).isActive = true
        mainMenuButton.addTarget(self, action: #selector(mainMenuButtonTapped), for: .touchDown)
        mainMenuButton.addTarget(self, action: #selector(mainMenuButtonUntapped), for: .touchUpInside)
        mainMenuButton.layer.borderWidth = 1
        
        
        addSubview(microphoneButton)
        microphoneButton.translatesAutoresizingMaskIntoConstraints = false
        microphoneButton.frame = CGRect(x: 20, y: 20, width: 18, height: 20)
        microphoneButton.clipsToBounds = true
        microphoneButton.backgroundColor = .yellow
        microphoneButton.layer.cornerRadius = 0.5 * microphoneButton.bounds.size.width
        microphoneButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        microphoneButton.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 188).isActive = true
        microphoneButton.widthAnchor.constraint(equalToConstant: 15).isActive = true
        microphoneButton.heightAnchor.constraint(equalToConstant: 15).isActive = true
        microphoneButton.addTarget(self, action: #selector(microphoneButtonTapped), for: .touchDown)
        microphoneButton.addTarget(self, action: #selector(microphoneButtonUntapped), for: .touchUpInside)
        microphoneButton.layer.borderWidth = 1
        
        
        addSubview(slotForHeadphones)
        slotForHeadphones.translatesAutoresizingMaskIntoConstraints = false
        slotForHeadphones.frame = CGRect(x: 20, y: 40, width: 18, height: 40)
        slotForHeadphones.clipsToBounds = true
        slotForHeadphones.backgroundColor = .black
        slotForHeadphones.layer.cornerRadius = 0.5 * slotForHeadphones.bounds.size.width
        slotForHeadphones.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        slotForHeadphones.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 228).isActive = true
        slotForHeadphones.widthAnchor.constraint(equalToConstant: 15).isActive = true
        slotForHeadphones.heightAnchor.constraint(equalToConstant: 35).isActive = true
        slotForHeadphones.addTarget(self, action: #selector(slotForHeadphonesConnected), for: .touchDown)
        slotForHeadphones.addTarget(self, action: #selector(slotForHeadphonesDisconnected), for: .touchUpInside)
        slotForHeadphones.layer.borderWidth = 1
        
        
        addSubview(L3up)
        L3up.translatesAutoresizingMaskIntoConstraints = false
        L3up.frame = CGRect(x: 20, y: 20, width: 18, height: 20)
        L3up.clipsToBounds = true
        L3up.backgroundColor = .white
        L3up.layer.cornerRadius = 0.5 * L3up.bounds.size.width
        L3up.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: -60).isActive = true
        L3up.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 148).isActive = true
        L3up.widthAnchor.constraint(equalToConstant: 15).isActive = true
        L3up.heightAnchor.constraint(equalToConstant: 15).isActive = true
        L3up.addTarget(self, action: #selector(L3upTapped), for: .touchDown)
        L3up.addTarget(self, action: #selector(L3upUntapped), for: .touchUpInside)
        L3up.layer.borderWidth = 1
        L3up.layer.borderColor = UIColor.red.cgColor

        
        addSubview(L3down)
        L3down.translatesAutoresizingMaskIntoConstraints = false
        L3down.frame = CGRect(x: 20, y: 20, width: 18, height: 20)
        L3down.clipsToBounds = true
        L3down.backgroundColor = .white
        L3down.layer.cornerRadius = 0.5 * L3down.bounds.size.width
        L3down.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: -60).isActive = true
        L3down.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 188).isActive = true
        L3down.widthAnchor.constraint(equalToConstant: 15).isActive = true
        L3down.heightAnchor.constraint(equalToConstant: 15).isActive = true
        L3down.addTarget(self, action: #selector(L3downTapped), for: .touchDown)
        L3down.addTarget(self, action: #selector(L3downUntapped), for: .touchUpInside)
        L3down.layer.borderWidth = 1
        L3down.layer.borderColor = UIColor.red.cgColor

        
        addSubview(L3left)
        L3left.translatesAutoresizingMaskIntoConstraints = false
        L3left.frame = CGRect(x: 20, y: 20, width: 18, height: 20)
        L3left.clipsToBounds = true
        L3left.backgroundColor = .white
        L3left.layer.cornerRadius = 0.5 * L3left.bounds.size.width
        L3left.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: -82).isActive = true
        L3left.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 168).isActive = true
        L3left.widthAnchor.constraint(equalToConstant: 15).isActive = true
        L3left.heightAnchor.constraint(equalToConstant: 15).isActive = true
        L3left.addTarget(self, action: #selector(L3leftTapped), for: .touchDown)
        L3left.addTarget(self, action: #selector(L3leftUntapped), for: .touchUpInside)
        L3left.layer.borderWidth = 1
        L3left.layer.borderColor = UIColor.red.cgColor
        
        
        addSubview(L3right)
        L3right.translatesAutoresizingMaskIntoConstraints = false
        L3right.frame = CGRect(x: 20, y: 20, width: 18, height: 20)
        L3right.clipsToBounds = true
        L3right.backgroundColor = .white
        L3right.layer.cornerRadius = 0.5 * L3left.bounds.size.width
        L3right.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: -39).isActive = true
        L3right.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 168).isActive = true
        L3right.widthAnchor.constraint(equalToConstant: 15).isActive = true
        L3right.heightAnchor.constraint(equalToConstant: 15).isActive = true
        L3right.addTarget(self, action: #selector(L3rightTapped), for: .touchDown)
        L3right.addTarget(self, action: #selector(L3rightUntapped), for: .touchUpInside)
        L3right.layer.borderWidth = 1
        L3right.layer.borderColor = UIColor.red.cgColor
        
        
        addSubview(L3)
        L3.translatesAutoresizingMaskIntoConstraints = false
        L3.frame = CGRect(x: 20, y: 20, width: 18, height: 20)
        L3.clipsToBounds = true
        L3.backgroundColor = .white
        L3.layer.cornerRadius = 0.5 * L3.bounds.size.width
        L3.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: -60).isActive = true
        L3.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 168).isActive = true
        L3.widthAnchor.constraint(equalToConstant: 15).isActive = true
        L3.heightAnchor.constraint(equalToConstant: 15).isActive = true
        L3.addTarget(self, action: #selector(L3Tapped), for: .touchDown)
        L3.addTarget(self, action: #selector(L3Untapped), for: .touchUpInside)
        L3.layer.borderWidth = 1
        L3.layer.borderColor = UIColor.red.cgColor
        
        
        addSubview(R3up)
        R3up.translatesAutoresizingMaskIntoConstraints = false
        R3up.frame = CGRect(x: 20, y: 20, width: 18, height: 20)
        R3up.clipsToBounds = true
        R3up.backgroundColor = .white
        R3up.layer.cornerRadius = 0.5 * R3up.bounds.size.width
        R3up.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 61).isActive = true
        R3up.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 148).isActive = true
        R3up.widthAnchor.constraint(equalToConstant: 15).isActive = true
        R3up.heightAnchor.constraint(equalToConstant: 15).isActive = true
        R3up.addTarget(self, action: #selector(R3upTapped), for: .touchDown)
        R3up.addTarget(self, action: #selector(R3upUntapped), for: .touchUpInside)
        R3up.layer.borderWidth = 1
        R3up.layer.borderColor = UIColor.red.cgColor
        
        
        addSubview(R3down)
        R3down.translatesAutoresizingMaskIntoConstraints = false
        R3down.frame = CGRect(x: 20, y: 20, width: 18, height: 20)
        R3down.clipsToBounds = true
        R3down.backgroundColor = .white
        R3down.layer.cornerRadius = 0.5 * R3down.bounds.size.width
        R3down.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 61).isActive = true
        R3down.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 188).isActive = true
        R3down.widthAnchor.constraint(equalToConstant: 15).isActive = true
        R3down.heightAnchor.constraint(equalToConstant: 15).isActive = true
        R3down.addTarget(self, action: #selector(R3downTapped), for: .touchDown)
        R3down.addTarget(self, action: #selector(R3downUntapped), for: .touchUpInside)
        R3down.layer.borderWidth = 1
        R3down.layer.borderColor = UIColor.red.cgColor
        
        
        addSubview(R3left)
        R3left.translatesAutoresizingMaskIntoConstraints = false
        R3left.frame = CGRect(x: 20, y: 20, width: 18, height: 20)
        R3left.clipsToBounds = true
        R3left.backgroundColor = .white
        R3left.layer.cornerRadius = 0.5 * R3left.bounds.size.width
        R3left.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 39).isActive = true
        R3left.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 168).isActive = true
        R3left.widthAnchor.constraint(equalToConstant: 15).isActive = true
        R3left.heightAnchor.constraint(equalToConstant: 15).isActive = true
        R3left.addTarget(self, action: #selector(R3leftTapped), for: .touchDown)
        R3left.addTarget(self, action: #selector(R3leftUntapped), for: .touchUpInside)
        R3left.layer.borderWidth = 1
        R3left.layer.borderColor = UIColor.red.cgColor
        
        
        addSubview(R3right)
        R3right.translatesAutoresizingMaskIntoConstraints = false
        R3right.frame = CGRect(x: 20, y: 20, width: 18, height: 20)
        R3right.clipsToBounds = true
        R3right.backgroundColor = .white
        R3right.layer.cornerRadius = 0.5 * R3right.bounds.size.width
        R3right.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 82).isActive = true
        R3right.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 168).isActive = true
        R3right.widthAnchor.constraint(equalToConstant: 15).isActive = true
        R3right.heightAnchor.constraint(equalToConstant: 15).isActive = true
        R3right.addTarget(self, action: #selector(R3rightTapped), for: .touchDown)
        R3right.addTarget(self, action: #selector(R3rightUntapped), for: .touchUpInside)
        R3right.layer.borderWidth = 1
        R3right.layer.borderColor = UIColor.red.cgColor
        
        
        addSubview(R3)
        R3.translatesAutoresizingMaskIntoConstraints = false
        R3.frame = CGRect(x: 20, y: 20, width: 18, height: 20)
        R3.clipsToBounds = true
        R3.backgroundColor = .white
        R3.layer.cornerRadius = 0.5 * R3.bounds.size.width
        R3.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 61).isActive = true
        R3.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 168).isActive = true
        R3.widthAnchor.constraint(equalToConstant: 15).isActive = true
        R3.heightAnchor.constraint(equalToConstant: 15).isActive = true
        R3.addTarget(self, action: #selector(R3Tapped), for: .touchDown)
        R3.addTarget(self, action: #selector(R3Untapped), for: .touchUpInside)
        R3.layer.borderWidth = 1
        R3.layer.borderColor = UIColor.red.cgColor
        
        
        addSubview(squareButton)
        squareButton.translatesAutoresizingMaskIntoConstraints = false
        squareButton.frame = CGRect(x: 20, y: 20, width: 24, height: 20)
        squareButton.clipsToBounds = true
        squareButton.layer.cornerRadius = 0.5 * squareButton.bounds.size.width
        squareButton.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 89).isActive = true
        squareButton.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 116).isActive = true
        squareButton.widthAnchor.constraint(equalToConstant: 26).isActive = true
        squareButton.heightAnchor.constraint(equalToConstant: 26).isActive = true
        squareButton.addTarget(self, action: #selector(squareButtonTapped), for: .touchDown)
        squareButton.addTarget(self, action: #selector(squareButtonUntapped), for: .touchUpInside)
        squareButton.layer.borderWidth = 2
        squareButton.layer.borderColor = UIColor.red.cgColor
        
        
        addSubview(triangleButton)
        triangleButton.translatesAutoresizingMaskIntoConstraints = false
        triangleButton.frame = CGRect(x: 20, y: 20, width: 24, height: 20)
        triangleButton.clipsToBounds = true
        triangleButton.layer.cornerRadius = 0.5 * triangleButton.bounds.size.width
        triangleButton.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 117).isActive = true
        triangleButton.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 88).isActive = true
        triangleButton.widthAnchor.constraint(equalToConstant: 26).isActive = true
        triangleButton.heightAnchor.constraint(equalToConstant: 26).isActive = true
        triangleButton.addTarget(self, action: #selector(triangleButtonTapped), for: .touchDown)
        triangleButton.addTarget(self, action: #selector(triangleButtonUntapped), for: .touchUpInside)
        triangleButton.layer.borderWidth = 2
        triangleButton.layer.borderColor = UIColor.red.cgColor
        
        
        addSubview(circleButton)
        circleButton.translatesAutoresizingMaskIntoConstraints = false
        circleButton.frame = CGRect(x: 20, y: 20, width: 24, height: 20)
        circleButton.clipsToBounds = true
        circleButton.layer.cornerRadius = 0.5 * circleButton.bounds.size.width
        circleButton.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 144).isActive = true
        circleButton.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 116).isActive = true
        circleButton.widthAnchor.constraint(equalToConstant: 26).isActive = true
        circleButton.heightAnchor.constraint(equalToConstant: 26).isActive = true
        circleButton.addTarget(self, action: #selector(circleButtonTapped), for: .touchDown)
        circleButton.addTarget(self, action: #selector(circleButtonUntapped), for: .touchUpInside)
        circleButton.layer.borderWidth = 2
        circleButton.layer.borderColor = UIColor.red.cgColor
        
        
        addSubview(crossButton)
        crossButton.translatesAutoresizingMaskIntoConstraints = false
        crossButton.frame = CGRect(x: 20, y: 20, width: 24, height: 20)
        crossButton.clipsToBounds = true
        crossButton.layer.cornerRadius = 0.5 * crossButton.bounds.size.width
        crossButton.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 117).isActive = true
        crossButton.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 143).isActive = true
        crossButton.widthAnchor.constraint(equalToConstant: 26).isActive = true
        crossButton.heightAnchor.constraint(equalToConstant: 26).isActive = true
        crossButton.addTarget(self, action: #selector(crossButtonTapped), for: .touchDown)
        crossButton.addTarget(self, action: #selector(crossButtonUntapped), for: .touchUpInside)
        crossButton.layer.borderWidth = 2
        crossButton.layer.borderColor = UIColor.red.cgColor
        
        
        addSubview(L1Button)
        L1Button.translatesAutoresizingMaskIntoConstraints = false
        L1Button.frame = CGRect(x: 20, y: 20, width: 24, height: 20)
        L1Button.clipsToBounds = true
        L1Button.layer.cornerRadius = 0.5 * L1Button.bounds.size.width
        L1Button.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 127).isActive = true
        L1Button.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -192).isActive = true
        L1Button.widthAnchor.constraint(equalToConstant: 44).isActive = true
        L1Button.heightAnchor.constraint(equalToConstant: 34).isActive = true
        L1Button.addTarget(self, action: #selector(L1ButtonTapped), for: .touchDown)
        L1Button.addTarget(self, action: #selector(L1ButtonUntapped), for: .touchUpInside)
        L1Button.layer.borderWidth = 2
        L1Button.layer.borderColor = UIColor.red.cgColor
        
        
        addSubview(L2Button)
        L2Button.translatesAutoresizingMaskIntoConstraints = false
        L2Button.frame = CGRect(x: 20, y: 20, width: 24, height: 20)
        L2Button.clipsToBounds = true
        L2Button.layer.cornerRadius = 0.5 * L2Button.bounds.size.width
        L2Button.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 120).isActive = true
        L2Button.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -146).isActive = true
        L2Button.widthAnchor.constraint(equalToConstant: 32).isActive = true
        L2Button.heightAnchor.constraint(equalToConstant: 42).isActive = true
        L2Button.addTarget(self, action: #selector(L2ButtonTapped), for: .touchDown)
        L2Button.addTarget(self, action: #selector(L2ButtonUntapped), for: .touchUpInside)
        L2Button.layer.borderWidth = 2
        L2Button.layer.borderColor = UIColor.red.cgColor
        
        
        addSubview(R1Button)
        R1Button.translatesAutoresizingMaskIntoConstraints = false
        R1Button.frame = CGRect(x: 20, y: 20, width: 24, height: 20)
        R1Button.clipsToBounds = true
        R1Button.layer.cornerRadius = 0.5 * R1Button.bounds.size.width
        R1Button.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: -128).isActive = true
        R1Button.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -192).isActive = true
        R1Button.widthAnchor.constraint(equalToConstant: 44).isActive = true
        R1Button.heightAnchor.constraint(equalToConstant: 34).isActive = true
        R1Button.addTarget(self, action: #selector(R1ButtonTapped), for: .touchDown)
        R1Button.addTarget(self, action: #selector(R1ButtonUntapped), for: .touchUpInside)
        R1Button.layer.borderWidth = 2
        R1Button.layer.borderColor = UIColor.red.cgColor
        
        
        addSubview(R2Button)
        R2Button.translatesAutoresizingMaskIntoConstraints = false
        R2Button.frame = CGRect(x: 20, y: 20, width: 24, height: 20)
        R2Button.clipsToBounds = true
        R2Button.layer.cornerRadius = 0.5 * R2Button.bounds.size.width
        R2Button.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: -121).isActive = true
        R2Button.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -146).isActive = true
        R2Button.widthAnchor.constraint(equalToConstant: 32).isActive = true
        R2Button.heightAnchor.constraint(equalToConstant: 42).isActive = true
        R2Button.addTarget(self, action: #selector(R2ButtonTapped), for: .touchDown)
        R2Button.addTarget(self, action: #selector(R2ButtonUntapped), for: .touchUpInside)
        R2Button.layer.borderWidth = 2
        R2Button.layer.borderColor = UIColor.red.cgColor
        
        
        addSubview(slotForCharging)
        slotForCharging.translatesAutoresizingMaskIntoConstraints = false
        slotForCharging.frame = CGRect(x: 20, y: 20, width: 36, height: 20)
        slotForCharging.clipsToBounds = true
        slotForCharging.layer.cornerRadius = 0.5 * slotForCharging.bounds.size.width
        slotForCharging.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: -1).isActive = true
        slotForCharging.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -190.5).isActive = true
        slotForCharging.widthAnchor.constraint(equalToConstant: 35).isActive = true
        slotForCharging.heightAnchor.constraint(equalToConstant: 35).isActive = true
        slotForCharging.addTarget(self, action: #selector(slotForChargingConnected), for: .touchDown)
        slotForCharging.addTarget(self, action: #selector(slotForChargingDisconnected), for: .touchUpInside)
        slotForCharging.layer.borderWidth = 2
        slotForCharging.layer.borderColor = UIColor.red.cgColor


        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
}

class JoystickViewController: UIViewController, JoystickViewDelegate {
    func slotForChargingConnected() {}
    func slotForChargingDisconnected() {}
    
    func R2ButtonTapped() {}
    func R2ButtonUntapped() {}
    
    func R1ButtonTapped() {}
    func R1ButtonUntapped() {}
    
    func L2ButtonTapped() {}
    func L2ButtonUntapped() {}
    
    func L1ButtonTapped() {}
    func L1ButtonUntapped() {}
    
    func crossButtonTapped() {}
    func crossButtonUntapped() {}
    
    func circleButtonTapped() {}
    func circleButtonUntapped() {}
    
    func triangleButtonTapped() {}
    func triangleButtonUntapped() {}
    
    func squareButtonTapped() {}
    func squareButtonUntapped() {}
    
    func R3Tapped() {}
    func R3Untapped() {}
    
    func R3rightTapped() {}
    func R3rightUntapped() {}
    
    func R3leftTapped() {}
    func R3leftUntapped() {}
    
    func R3downTapped() {}
    func R3downUntapped() {}
    
    func R3upTapped() {}
    func R3upUntapped() {}
    
    func L3Tapped() {}
    func L3Untapped() {}
    
    func L3rightTapped() {}
    func L3rightUntapped() {}
    
    func L3leftTapped() {}
    func L3leftUntapped() {}
    
    func L3downTapped() {}
    func L3downUntapped() {}
    
    func L3upTapped() {}
    func L3upUntapped() {}
    
    func slotForHeadphonesConnected() {}
    func slotForHeadphonesDisconnected() {}
    
    func microphoneButtonTapped() {}
    func microphoneButtonUntapped() {}
    
    func mainMenuButtonTapped() {}
    func mainMenuButtonUntapped() {}
    
    func optionsButtonTapped() {}
    func optionsButtonUntapped() {}
    
    func screenshotButtonTapped() {}
    func screenshotButtonUntapped() {}
    
    func touchPadButtonTapped() {}
    func touchPadButtonUntapped() {}
    
    func leftCrossUpButtonTapped() {}
    func leftCrossUpButtonUntapped() {}
    
    func leftCrossDownButtonTapped() {}
    func leftCrossDownButtonUntapped() {}
    
    func leftCrossLeftButtonTapped() {}
    func leftCrossLeftButtonUntapped() {}
    
    func leftCrossRightButtonTapped() {}
    func leftCrossRightButtonUntapped() {}
    
    

    let customView = JoystickView()
    
    func showNavBar() {
            self.navigationController?.isNavigationBarHidden = false}
        
    @objc func forward() {
            let thirdViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "thirdViewController")
            navigationController?.pushViewController(thirdViewController, animated: true)
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        navigationItem.rightBarButtonItem = .init(title: "Forward", image: nil, target: self, action: #selector(forward))
                showNavBar()
        
        view.addSubview(customView)
        customView.delegate = self
        customView.translatesAutoresizingMaskIntoConstraints = false
        customView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        customView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        customView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        customView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
    }


}

