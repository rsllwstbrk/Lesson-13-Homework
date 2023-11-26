//
//  ThirdViewController.swift
//  Lesson 13 Homework
//
//  Created by Rsllwstbrk on 26.11.23.
//

import UIKit

class ThirdViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    let middleView = UIView()
    let notesTextField = UITextField()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        tableView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        tableView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        tableView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        cell.textLabel?.text = ""
        cell.addSubview(middleView)
        cell.heightAnchor.constraint(equalToConstant: 550).isActive = true
        middleView.centerXAnchor.constraint(equalTo: cell.centerXAnchor).isActive = true
        middleView.centerYAnchor.constraint(equalTo: cell.centerYAnchor).isActive = true
        middleView.translatesAutoresizingMaskIntoConstraints = false
        middleView.widthAnchor.constraint(equalToConstant: 369).isActive = true
        middleView.heightAnchor.constraint(equalToConstant: 550).isActive = true
        middleView.backgroundColor = .gray
        middleView.addSubview(notesTextField)
        notesTextField.text = "Notes:"
        notesTextField.translatesAutoresizingMaskIntoConstraints = false
        notesTextField.centerXAnchor.constraint(equalTo: middleView.centerXAnchor, constant: -150).isActive = true
        notesTextField.centerYAnchor.constraint(equalTo: middleView.centerYAnchor, constant: -257).isActive = true
        return cell
    }

}
