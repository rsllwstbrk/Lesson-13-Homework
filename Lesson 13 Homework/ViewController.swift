//
//  ViewController.swift
//  Lesson 13 Homework
//
//  Created by Rsllwstbrk on 14.11.23.
//

import UIKit


//class ExistingNavigationController: UINavigationController {
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        let secondViewController = Joystick_View_Controller()
//        let existingViewController = ViewController()
//        self.setViewControllers([existingViewController, secondViewController], animated: true)
//    }
//}

protocol ViewDelegate: AnyObject {
    func printInfo (_ value: String, _ value2: String, _ value3: String)
}

protocol ButtonsTapDelegate: AnyObject {
    func saveButtonTapped ()
    func cancelButtonTapped ()
    func clearButtonTapped ()
}

protocol ForwardButtonDelegate: AnyObject {
    func forwardButtontapped ()
}

protocol TextDeletionDelegate: AnyObject {
    func textFieldsClear ()
}




class TopView: UIView, UITextFieldDelegate, TextDeletionDelegate {
    
    
    weak var delegate: ViewDelegate?
    
    @objc func printInformation() {
        self.delegate?.printInfo(textField.text!, textField2.text!, textField3.text!)
        print(textField.text!, textField2.text!, textField3.text!)
    }
    
    func textFieldsClear() {
        textField.text = ""
        textField2.text = ""
        textField3.text = ""
    }
    
    
    
    let label = UILabel()
    let label2 = UILabel()
    let label3 = UILabel()
    let textField = UITextField()
    let textField2 = UITextField()
    let textField3 = UITextField()
    let imageView = UIImageView()
    
    let label4 = UILabel()
    
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
        textField.addTarget(self, action: #selector(printInformation), for: .editingDidEnd)
        textField.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 100).isActive = true
        textField.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -45).isActive = true
        
        addSubview(textField2)
        textField2.placeholder = "Enter Middle Name"
        textField2.translatesAutoresizingMaskIntoConstraints = false
        textField2.borderStyle = .roundedRect
        textField2.layer.borderWidth = 1.0
        textField2.layer.borderColor = UIColor.gray.cgColor
        textField2.layer.cornerRadius = 5.0
        textField2.addTarget(self, action: #selector(printInformation), for: .editingDidEnd)
        textField2.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 100).isActive = true
        textField2.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0).isActive = true
        
        addSubview(textField3)
        textField3.placeholder = "Enter Last Name    "
        textField3.translatesAutoresizingMaskIntoConstraints = false
        textField3.borderStyle = .roundedRect
        textField3.layer.borderWidth = 1.0
        textField3.layer.borderColor = UIColor.gray.cgColor
        textField3.layer.cornerRadius = 5.0
        textField3.addTarget(self, action: #selector(printInformation), for: .editingDidEnd)
        textField3.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 100).isActive = true
        textField3.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 45).isActive = true
        
        
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.delegate?.printInfo(textField.text ?? "", textField.text ?? "", textField.text ?? "")
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        self.delegate?.printInfo(textField.text ?? "", textField.text ?? "", textField.text ?? "")
    }
    
}





class MiddleView: UIView, ViewDelegate, ButtonsTapDelegate {
    
    
    let notesTextField = UITextField()
    let savedNotesTextField = UITextField()
    
    
    func printInfo(_ value: String, _ value2: String, _ value3: String) {
        notesTextField.text = "\(value) \(value2) \(value3)"
    }
    
    func saveButtonTapped() {
        savedNotesTextField.text = "Saved - \(notesTextField.text ?? "")                 "
    }
    
    func cancelButtonTapped() {
        notesTextField.text = "Saving canceled"
        savedNotesTextField.text = ""
    }
    
    func clearButtonTapped() {
        notesTextField.text = ""
        savedNotesTextField.text = ""
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(notesTextField)
        notesTextField.textColor = .black
        notesTextField.placeholder = "Notes:                            "
        notesTextField.translatesAutoresizingMaskIntoConstraints = false
        notesTextField.centerYAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
        notesTextField.centerXAnchor.constraint(equalTo: self.leadingAnchor, constant: 100).isActive = true
        
        addSubview(savedNotesTextField)
        savedNotesTextField.textColor = .black
        savedNotesTextField.placeholder = "Saved information:                       "
        savedNotesTextField.translatesAutoresizingMaskIntoConstraints = false
        savedNotesTextField.centerYAnchor.constraint(equalTo: self.topAnchor, constant: 50).isActive = true
        savedNotesTextField.centerXAnchor.constraint(equalTo: self.leadingAnchor, constant: 136).isActive = true
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}



class BottomView: UIView {
    
    weak var delegate: ButtonsTapDelegate?
    weak var delegate2: TextDeletionDelegate?
    weak var delegate3: ForwardButtonDelegate?
    
    
    let buttonSave = UIButton()
    let buttonCancel = UIButton()
    let buttonClear = UIButton()
    let buttonForward = UIButton()
    
    @objc func saveButtonTap () {
        self.delegate?.saveButtonTapped()
    }
    
    @objc func cancelButtonTap () {
        self.delegate?.cancelButtonTapped()
    }
    
    @objc func clearButtonTap () {
        self.delegate2?.textFieldsClear()
    }
    
    @objc func forwardButtonTap () {
        self.delegate3?.forwardButtontapped()
    }
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        addSubview(buttonSave)
        buttonSave.setTitle("Save", for: .normal)
        buttonSave.translatesAutoresizingMaskIntoConstraints = false
        buttonSave.setTitleColor(.link, for: .normal)
        buttonSave.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: -160).isActive = true
        addSubview(buttonCancel)
        buttonSave.addTarget(self, action: #selector(saveButtonTap), for: .touchUpInside)
        
        buttonCancel.setTitle("Canсel", for: .normal)
        buttonCancel.translatesAutoresizingMaskIntoConstraints = false
        buttonCancel.setTitleColor(.link, for: .normal)
        buttonCancel.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: -60).isActive = true
        buttonCancel.addTarget(self, action: #selector(cancelButtonTap), for: .touchUpInside)

        addSubview(buttonClear)
        buttonClear.setTitle("Clear", for: .normal)
        buttonClear.translatesAutoresizingMaskIntoConstraints = false
        buttonClear.setTitleColor(.link, for: .normal)
        buttonClear.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 50).isActive = true
        buttonClear.addTarget(self, action: #selector(clearButtonTap), for: .touchUpInside)
        
        addSubview(buttonForward)
        buttonForward.setTitle("Forward", for: .normal)
        buttonForward.translatesAutoresizingMaskIntoConstraints = false
        buttonForward.setTitleColor(.link, for: .normal)
        buttonForward.clipsToBounds = true
        buttonForward.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 120).isActive = true
        buttonForward.addTarget(self, action: #selector(forwardButtonTap), for: .touchUpInside)

        
        
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


class ViewController: UIViewController, ForwardButtonDelegate {
    
    let customView = TopView()

    let customView2 = MiddleView()

    let customView3 = BottomView()
    
    
    
    func forwardButtontapped() {
        let secondController = Joystick_View_Controller()
        navigationController?.setNavigationBarHidden(true, animated: true)
        navigationController?.pushViewController(secondController, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.viewControllers: [ViewController(), Joystick_View_Controller()]
        
        
        view.addSubview(customView)
        customView.delegate = customView2
        customView.translatesAutoresizingMaskIntoConstraints = false
        customView.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        customView.widthAnchor.constraint(equalToConstant: 360).isActive = true
        customView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        customView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -3).isActive = true
        
        
        view.addSubview(customView2)
        customView2.translatesAutoresizingMaskIntoConstraints = false
        customView2.backgroundColor = .gray
        customView2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        customView2.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: -375).isActive = true
        customView2.widthAnchor.constraint(equalToConstant: 367).isActive = true
        customView2.heightAnchor.constraint(equalToConstant: 520).isActive = true

        
        view.addSubview(customView3)
        customView3.delegate = customView2
        customView3.delegate2 = customView
        customView3.delegate3 = self
        customView3.translatesAutoresizingMaskIntoConstraints = false
        customView3.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        customView3.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: -80).isActive = true
        customView3.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        customView3.heightAnchor.constraint(equalToConstant: 60).isActive = true
    
    }
    
    
}

