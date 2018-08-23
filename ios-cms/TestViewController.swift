//
//  TestTableViewController.swift
//  ios-cms
//
//  Created by artem on 23.08.2018.
//  Copyright © 2018 artem. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: testTableVC/*UITableView*/, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    }
    
}











