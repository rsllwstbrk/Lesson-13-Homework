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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let table = tableView
//        table?.addSubview(middleView)

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = ""
        cell.addSubview(middleView)
        middleView.centerXAnchor.constraint(equalTo: cell.centerXAnchor).isActive = true
        middleView.centerYAnchor.constraint(equalTo: cell.centerYAnchor).isActive = true
        middleView.translatesAutoresizingMaskIntoConstraints = false
        middleView.widthAnchor.constraint(equalToConstant: 367).isActive = true
        middleView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        middleView.backgroundColor = .gray
        return cell
    }

}
