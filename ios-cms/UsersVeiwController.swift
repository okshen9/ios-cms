//
//  ViewController.swift
//  four ui
//
//  Created by artem on 21.08.2018.
//  Copyright © 2018 artem. All rights reserved.
//

import UIKit

class UsersVeiwController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var button: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.title = "Пользователи"
    }//готовится отобразиться на экран
    
    var tableView = UITableView()//обявляем пеерменную таблички
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTable()//добавляем ее в стартовый запуск
    }
    
    private func setupTable() {//вынкция вызова и отображения таблички
        self.tableView.frame = self.view.frame//
        self.view.addSubview(self.tableView)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "tableViewCellId")
        //self.tableView.tableFooterView = UIView()
        //self.tableView.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func planBar(_ sender: Any) {
        
    }
    
    // MARK: - UITabelViewDelegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5;
    }//количество ячеек
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCellId", for: indexPath)
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }//наполнение
    
}



