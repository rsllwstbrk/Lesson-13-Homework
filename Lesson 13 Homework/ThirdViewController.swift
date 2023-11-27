//
//  ThirdViewController.swift
//  Lesson 13 Homework
//
//  Created by Rsllwstbrk on 26.11.23.
//

import UIKit

class ThirdViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        return cell
    }

}
