//
//  ViewController.swift
//  MakeTableView
//
//  Created by 오국원 on 2022/04/19.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "mycell")
        cell.textLabel?.text = "\(indexPath.row)"
        cell.detailTextLabel?.text = indexPath.description

        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

}

