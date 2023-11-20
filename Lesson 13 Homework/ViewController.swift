//
//  ViewController.swift
//  Lesson 13 Homework
//
//  Created by Rsllwstbrk on 14.11.23.
//

import UIKit


protocol ViewDelegate: AnyObject {
    func printValue()
    func showValue()
    func editValue()
}

class View: UIView, UITextFieldDelegate {
    
    weak var delegate: ViewDelegate?
    
    @objc func printValue() {
        self.delegate?.printValue()
        print(textField.text!, textField2.text!, textField3.text!)
    }
    
    let label = UILabel()
    let label2 = UILabel()
    let label3 = UILabel()
    let textField = UITextField()
    let textField2 = UITextField()
    let textField3 = UITextField()
    let imageView = UIImageView()
    
    let label4 = UILabel()
    
    let buttonSave = UIButton()
    let buttonCancel = UIButton()
    let buttonClear = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        addSubview(imageView)
        imageView.backgroundColor = .blue
        imageView.layer.cornerRadius = 8
        imageView.image = UIImage(named: "nike.jpg")?.withRenderingMode(.alwaysOriginal)
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        addSubview(label)
        label.text = "First"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: -30).isActive = true
        label.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -45).isActive = true
        
        addSubview(label2)
        label2.text = "Middle"
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: -22).isActive = true
        label2.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0).isActive = true
        
        addSubview(label3)
        label3.text = "Last"
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: -30).isActive = true
        label3.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 45).isActive = true
        
        
        addSubview(textField)
        textField.placeholder = "Enter First Name    "
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .roundedRect
        textField.layer.borderWidth = 1.0
        textField.layer.borderColor = UIColor.gray.cgColor
        textField.layer.cornerRadius = 5.0
        textField.addTarget(self, action: #selector(printValue), for: .editingDidEnd)
        textField.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 100).isActive = true
        textField.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -45).isActive = true
        
        addSubview(textField2)
        textField2.placeholder = "Enter Middle Name"
        textField2.translatesAutoresizingMaskIntoConstraints = false
        textField2.borderStyle = .roundedRect
        textField2.layer.borderWidth = 1.0
        textField2.layer.borderColor = UIColor.gray.cgColor
        textField2.layer.cornerRadius = 5.0
        textField2.addTarget(self, action: #selector(printValue), for: .editingDidEnd)
        textField2.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 100).isActive = true
        textField2.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0).isActive = true
        
        addSubview(textField3)
        textField3.placeholder = "Enter Last Name    "
        textField3.translatesAutoresizingMaskIntoConstraints = false
        textField3.borderStyle = .roundedRect
        textField3.layer.borderWidth = 1.0
        textField3.layer.borderColor = UIColor.gray.cgColor
        textField3.layer.cornerRadius = 5.0
        textField3.addTarget(self, action: #selector(printValue), for: .editingDidEnd)
        textField3.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 100).isActive = true
        textField3.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 45).isActive = true
        
        
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.delegate?.printValue()
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        self.delegate?.printValue()
    }
    
}





class View2: UIView {
    
    weak var delegate2: ViewDelegate?
    
    @objc func showValue() {
//        self.delegate2?.showValue(notesLabel.text = textField2.text ?? "Notes:")
//        notesLabel.text = textField.text
    }
    
    let notesLabel = UITextField()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        addSubview(notesLabel)
        notesLabel.textColor = .black
        notesLabel.placeholder = "Notes:"
//        notesLabel.delegate =
        notesLabel.translatesAutoresizingMaskIntoConstraints = false
        notesLabel.centerYAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
        notesLabel.centerXAnchor.constraint(equalTo: self.leadingAnchor, constant: 40).isActive = true
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}



class View3: UIView {
    weak var delegate3: ViewDelegate?
    
    let buttonSave = UIButton()
    let buttonCancel = UIButton()
    let buttonClear = UIButton()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        addSubview(buttonSave)
        buttonSave.setTitle("Save", for: .normal)
        buttonSave.translatesAutoresizingMaskIntoConstraints = false
        buttonSave.setTitleColor(.link, for: .normal)
        buttonSave.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: -125).isActive = true
        
        addSubview(buttonCancel)
        buttonCancel.setTitle("Canсel", for: .normal)
        buttonCancel.translatesAutoresizingMaskIntoConstraints = false
        buttonCancel.setTitleColor(.link, for: .normal)
        buttonCancel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        addSubview(buttonClear)
        buttonClear.setTitle("Clear", for: .normal)
        buttonClear.translatesAutoresizingMaskIntoConstraints = false
        buttonClear.setTitleColor(.link, for: .normal)
        buttonClear.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 125).isActive = true
        
        
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}




class ViewController: UIViewController, ViewDelegate {
    @objc func printValue() {
    }
    
    @objc func showValue() {
    }
    
    @objc func editValue() {
    }
    
    let customView = View()

    let customView2 = View2()

    let customView3 = View3()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        view.addSubview(customView)
        customView.delegate = self
        customView.translatesAutoresizingMaskIntoConstraints = false
        customView.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        customView.widthAnchor.constraint(equalToConstant: 360).isActive = true
        customView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        customView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -3).isActive = true
        
        
        view.addSubview(customView2)
        customView2.delegate2 = self
        customView2.translatesAutoresizingMaskIntoConstraints = false
        customView2.backgroundColor = .gray
        customView2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        customView2.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: -375).isActive = true
        customView2.widthAnchor.constraint(equalToConstant: 367).isActive = true
        customView2.heightAnchor.constraint(equalToConstant: 520).isActive = true

        
        view.addSubview(customView3)
        customView3.delegate3 = self
        customView3.translatesAutoresizingMaskIntoConstraints = false
        customView3.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        customView3.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: -80).isActive = true
        customView3.widthAnchor.constraint(equalToConstant: 350).isActive = true
        customView3.heightAnchor.constraint(equalToConstant: 50).isActive = true
    
    }
    
    
}

