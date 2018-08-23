//
//  TestTableViewController.swift
//  ios-cms
//
//  Created by artem on 23.08.2018.
//  Copyright © 2018 artem. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
  
    var massive = ["Hello", "How are you?", "WOW!", "IT'S ALIVE!!!"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        testTableVC.delegate = self
        testTableVC.dataSource = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var testTableVC: UITableView!
    
    
    /*func setupTable() {
        self.testTableVC.add
    }
    
    private func setupTable() {//вынкция вызова и отображения таблички
        self.tableView.frame = self.view.frame//
        self.view.addSubview(self.tableView)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "tableViewCellId")
        //self.tableView.tableFooterView = UIView()
        //self.tableView.isHidden = true
    }*/
    
    
    
    
}

extension TestViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return massive.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OneCell") as! TestTableViewCell
        let data = massive[indexPath.row]
        cell.textL.text = data
        return cell
    }
    
}




