//
//  ViewController.swift
//  HomeWork#4.3(2pt)
//
//  Created by Эмир Кармышев on 19/1/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dates.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index = indexPath.row
        let cell = UITableViewCell()
        
        cell .textLabel?.text = dates[index]
        cell.backgroundColor = UIColor.white
        
        return cell

    }
    
    var dates: [String] = ["19.01 - courses","20.01 - cleaning","21.01 - HB"]

    @IBOutlet weak var textfield: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func add(_ sender: Any) {
        dates.append(textfield.text ?? String())
        
        print(dates)
        
        tableView.reloadData()
    }
    
    @IBAction func del(_ sender: Any) {
        dates.removeLast()
        
        print(dates)
        
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }


}

