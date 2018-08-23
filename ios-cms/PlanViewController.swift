
//
//  Plan.swift
//  four ui
//
//  Created by artem on 21.08.2018.
//  Copyright © 2018 artem. All rights reserved.
//

import UIKit
class PlanViewController: UIViewController {

    @IBOutlet weak var ibPlanSegmentedControl: UISegmentedControl!
    @IBOutlet weak var ibButton1: UIButton!
    @IBOutlet weak var ibButton2: UIButton!
    @IBOutlet weak var ibButton3: UIButton!
    //@IBOutlet weak var ibPlanTableView: UITableView!
    
    override func loadView() {
        super.loadView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupButtons()
    }//ужесоздан, стори борд прочитан и UI элементы существуют. жет вызываться несколько раз за время сществования контролера. обычно тут совершаются действия по начальной настройке состояния контролера.(запрос данных от сервера)
    
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        self.title = "Расписание"
    }//готовится отобразиться на экран
    
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
    }//контролере отображон на экране
    
    override func viewWillDisappear(_ animated: Bool){
        super.viewWillDisappear(animated)
    }//контролер готовится исчезнуть с экрана
    
    override func viewDidDisappear(_ animated: Bool){
        super.viewDidDisappear(animated)
    }//исчез с экрана

    @IBAction func planBar(_ sender: Any) {
        self.setupButtons()
    }
    
    func setupButtons() {
        switch self.ibPlanSegmentedControl.selectedSegmentIndex {
        case 0:
            //self.ibPlanTableView.isHidden = false
            self.ibButton1.isHidden = false
            self.ibButton2.isHidden = true
            self.ibButton3.isHidden = true
        case 1:
            //self.ibPlanTableView.isHidden = true
            self.ibButton1.isHidden = true
            self.ibButton2.isHidden = false
            self.ibButton3.isHidden = true
        case 2:
            //self.ibPlanTableView.isHidden = true
            self.ibButton1.isHidden = true
            self.ibButton2.isHidden = true
            self.ibButton3.isHidden = false
        default:
            break
        }
    }
}
