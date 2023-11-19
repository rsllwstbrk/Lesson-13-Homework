//
//  ViewController.swift
//  Lesson 13 Homework
//
//  Created by Rsllwstbrk on 14.11.23.
//

import UIKit

protocol ViewControllerDelegate: AnyObject {
    func printFirstName()
    func printMiddleName()
    func printLastName()
}

class ViewController: UIViewController, ViewControllerDelegate {
    
    func printFirstName() {
    }
    func printMiddleName() {
    }
    func printLastName() {
    }
    

    weak var delegate: ViewControllerDelegate?
    weak var delegate2: ViewControllerDelegate?
    weak var delegate3: ViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel()
        label.text = "First"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        let label2 = UILabel()
        label2.text = "Middle"
        label2.translatesAutoresizingMaskIntoConstraints = false
        
        let label3 = UILabel()
        label3.text = "Last"
        label3.translatesAutoresizingMaskIntoConstraints = false
        
        var textField = UITextField()
        textField.placeholder = "Enter First Name    "
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .roundedRect
        textField.layer.borderWidth = 1.0
        textField.layer.borderColor = UIColor.gray.cgColor
        textField.layer.cornerRadius = 5.0
        func printFirstName() {
            self.delegate?.printFirstName()
            print(textField.text!)
        }
    
        var textField2 = UITextField()
        textField2.placeholder = "Enter Middle Name"
        textField2.translatesAutoresizingMaskIntoConstraints = false
        textField2.borderStyle = .roundedRect
        textField2.layer.borderWidth = 1.0
        textField2.layer.borderColor = UIColor.gray.cgColor
        textField2.layer.cornerRadius = 5.0
        func printMiddleName() {
            self.delegate2?.printMiddleName()
            print(textField2.text!)
        }
        
        var textField3 = UITextField()
        textField3.placeholder = "Enter Last Name    "
        textField3.translatesAutoresizingMaskIntoConstraints = false
        textField3.borderStyle = .roundedRect
        textField3.layer.borderWidth = 1.0
        textField3.layer.borderColor = UIColor.gray.cgColor
        textField3.layer.cornerRadius = 5.0
        func printLastName() {
            self.delegate3?.printLastName()
            print(textField3.text!)
        }
        
        let imageView = UIImageView()
        imageView.backgroundColor = .blue
        imageView.layer.cornerRadius = 8
        imageView.image = UIImage(named: "nike.jpg")?.withRenderingMode(.alwaysOriginal)
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        let stackView = UIView()
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
//        stackView.layer.borderWidth = 1
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            stackView.widthAnchor.constraint(equalToConstant: 360),
            stackView.heightAnchor.constraint(equalToConstant: 120),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -3)
        ])
        stackView.addSubview(label)
        label.centerXAnchor.constraint(equalTo: stackView.centerXAnchor, constant: -30).isActive = true
        label.centerYAnchor.constraint(equalTo: stackView.centerYAnchor, constant: -45).isActive = true
        
        stackView.addSubview(label2)
        label2.centerXAnchor.constraint(equalTo: stackView.centerXAnchor, constant: -22).isActive = true
        label2.centerYAnchor.constraint(equalTo: stackView.centerYAnchor, constant: 0).isActive = true
        
        stackView.addSubview(label3)
        label3.centerXAnchor.constraint(equalTo: stackView.centerXAnchor, constant: -30).isActive = true
        label3.centerYAnchor.constraint(equalTo: stackView.centerYAnchor, constant: 45).isActive = true
        
        stackView.addSubview(imageView)
        
        stackView.addSubview(textField)
        textField.centerXAnchor.constraint(equalTo: stackView.centerXAnchor, constant: 100).isActive = true
        textField.centerYAnchor.constraint(equalTo: stackView.centerYAnchor, constant: -45).isActive = true
        
        stackView.addSubview(textField2)
        textField2.centerXAnchor.constraint(equalTo: stackView.centerXAnchor, constant: 100).isActive = true
        textField2.centerYAnchor.constraint(equalTo: stackView.centerYAnchor, constant: 0).isActive = true
        
        stackView.addSubview(textField3)
        textField3.centerXAnchor.constraint(equalTo: stackView.centerXAnchor, constant: 100).isActive = true
        textField3.centerYAnchor.constraint(equalTo: stackView.centerYAnchor, constant: 45).isActive = true
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        let label4 = UILabel()
        label4.textColor = .black
        label4.numberOfLines = 0
        label4.text = "Notes:"
        
        let stackView2 = UIView()
        view.addSubview(stackView2)
        stackView2.translatesAutoresizingMaskIntoConstraints = false
        stackView2.backgroundColor = .gray
        stackView2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView2.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: -375).isActive = true
        stackView2.widthAnchor.constraint(equalToConstant: 367).isActive = true
        stackView2.heightAnchor.constraint(equalToConstant: 520).isActive = true
        stackView2.addSubview(label4)
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.centerYAnchor.constraint(equalTo: stackView2.topAnchor, constant: 20).isActive = true
        label4.centerXAnchor.constraint(equalTo: stackView2.leadingAnchor, constant: 40).isActive = true
              
        
        
        
        
        
        
        
        let buttonSave:UIButton = .init()
        buttonSave.setTitle("Save", for: .normal)
        buttonSave.translatesAutoresizingMaskIntoConstraints = false
        buttonSave.setTitleColor(.link, for: .normal)
        
        let buttonCancel:UIButton = .init()
        buttonCancel.setTitle("Canсel", for: .normal)
        buttonCancel.translatesAutoresizingMaskIntoConstraints = false
        buttonCancel.setTitleColor(.link, for: .normal)
        
        let buttonClear:UIButton = .init()
        buttonClear.setTitle("Clear", for: .normal)
        buttonClear.translatesAutoresizingMaskIntoConstraints = false
        buttonClear.setTitleColor(.link, for: .normal)
        
        let stackView3 = UIStackView(arrangedSubviews: [buttonSave, buttonClear, buttonCancel])
        view.addSubview(stackView3)
        stackView3.translatesAutoresizingMaskIntoConstraints = false
//        stackView3.layer.borderWidth = 1
        stackView3.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView3.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: -80).isActive = true
        stackView3.widthAnchor.constraint(equalToConstant: 350).isActive = true
        stackView3.heightAnchor.constraint(equalToConstant: 50).isActive = true
        stackView3.alignment = .fill
        stackView3.distribution = .fillEqually
        stackView3.spacing = 16.0
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }

    
}

