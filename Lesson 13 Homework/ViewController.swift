//
//  ViewController.swift
//  Lesson 13 Homework
//
//  Created by Rsllwstbrk on 14.11.23.
//

import UIKit


protocol ViewDelegate: AnyObject {
    func printValue()
}

class View: UIView {
    weak var delegate: ViewDelegate?
}

class ViewController: UIViewController, ViewDelegate {
    @objc func printValue() {
        self.delegate?.printValue()
    }
    
   
//    @objc func printValue() {
//    }
    
    
//    func printFirstName() {
//    }
//    func printMiddleName() {
//    }
//    func printLastName() {
//    }
    

    weak var delegate: ViewDelegate?
//    weak var delegate2: ViewDelegate?
//    weak var delegate3: ViewDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let customView = View()
        customView.delegate = self
        let customView2 = View()
        customView2.delegate = self
        let customView3 = View()
        customView3.delegate = self
        
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
        textField.addTarget(self, action: #selector(printValue), for: .editingChanged)
        
    
        var textField2 = UITextField()
        textField2.placeholder = "Enter Middle Name"
        textField2.translatesAutoresizingMaskIntoConstraints = false
        textField2.borderStyle = .roundedRect
        textField2.layer.borderWidth = 1.0
        textField2.layer.borderColor = UIColor.gray.cgColor
        textField2.layer.cornerRadius = 5.0
        textField2.addTarget(self, action: #selector(printValue), for: .editingChanged)
        
        var textField3 = UITextField()
        textField3.placeholder = "Enter Last Name    "
        textField3.translatesAutoresizingMaskIntoConstraints = false
        textField3.borderStyle = .roundedRect
        textField3.layer.borderWidth = 1.0
        textField3.layer.borderColor = UIColor.gray.cgColor
        textField3.layer.cornerRadius = 5.0
        textField3.addTarget(self, action: #selector(printValue), for: .editingChanged)
        
        let imageView = UIImageView()
        imageView.backgroundColor = .blue
        imageView.layer.cornerRadius = 8
        imageView.image = UIImage(named: "nike.jpg")?.withRenderingMode(.alwaysOriginal)
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        view.addSubview(customView)
        customView.translatesAutoresizingMaskIntoConstraints = false
        customView.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        customView.widthAnchor.constraint(equalToConstant: 360).isActive = true
        customView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        customView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -3).isActive = true
        customView.addSubview(label)
        label.centerXAnchor.constraint(equalTo: customView.centerXAnchor, constant: -30).isActive = true
        label.centerYAnchor.constraint(equalTo: customView.centerYAnchor, constant: -45).isActive = true
        
        customView.addSubview(label2)
        label2.centerXAnchor.constraint(equalTo: customView.centerXAnchor, constant: -22).isActive = true
        label2.centerYAnchor.constraint(equalTo: customView.centerYAnchor, constant: 0).isActive = true
        
        customView.addSubview(label3)
        label3.centerXAnchor.constraint(equalTo: customView.centerXAnchor, constant: -30).isActive = true
        label3.centerYAnchor.constraint(equalTo: customView.centerYAnchor, constant: 45).isActive = true
        
        customView.addSubview(imageView)
        
        customView.addSubview(textField)
        textField.centerXAnchor.constraint(equalTo: customView.centerXAnchor, constant: 100).isActive = true
        textField.centerYAnchor.constraint(equalTo: customView.centerYAnchor, constant: -45).isActive = true
        
        customView.addSubview(textField2)
        textField2.centerXAnchor.constraint(equalTo: customView.centerXAnchor, constant: 100).isActive = true
        textField2.centerYAnchor.constraint(equalTo: customView.centerYAnchor, constant: 0).isActive = true
        
        customView.addSubview(textField3)
        textField3.centerXAnchor.constraint(equalTo: customView.centerXAnchor, constant: 100).isActive = true
        textField3.centerYAnchor.constraint(equalTo: customView.centerYAnchor, constant: 45).isActive = true
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        let label4 = UILabel()
        label4.textColor = .black
        label4.numberOfLines = 0
        label4.text = "Notes:"
        
        view.addSubview(customView2)
        customView2.translatesAutoresizingMaskIntoConstraints = false
        customView2.backgroundColor = .gray
        customView2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        customView2.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: -375).isActive = true
        customView2.widthAnchor.constraint(equalToConstant: 367).isActive = true
        customView2.heightAnchor.constraint(equalToConstant: 520).isActive = true
        customView2.addSubview(label4)
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.centerYAnchor.constraint(equalTo: customView2.topAnchor, constant: 20).isActive = true
        label4.centerXAnchor.constraint(equalTo: customView2.leadingAnchor, constant: 40).isActive = true
              
        
        
        
        
        
        
        
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
        
        view.addSubview(customView3)
        customView3.addSubview(buttonSave)
        customView3.addSubview(buttonClear)
        customView3.addSubview(buttonCancel)
        customView3.translatesAutoresizingMaskIntoConstraints = false
        customView3.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        customView3.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: -80).isActive = true
        customView3.widthAnchor.constraint(equalToConstant: 350).isActive = true
        customView3.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        buttonSave.centerXAnchor.constraint(equalTo: customView3.centerXAnchor, constant: -125).isActive = true
        
        buttonCancel.centerXAnchor.constraint(equalTo: customView3.centerXAnchor).isActive = true
        
        buttonClear.centerXAnchor.constraint(equalTo: customView3.centerXAnchor, constant: 125).isActive = true
        
        
        
    }

    
}

