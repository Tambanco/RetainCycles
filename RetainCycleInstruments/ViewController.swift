//
//  ViewController.swift
//  RetainCycleInstruments
//
//  Created by tambanco 🥳 on 12.05.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Show Red", style: .plain, target: self, action: #selector(handleShowRedController))
    }
    
    @objc func handleShowRedController() {
        navigationController?.pushViewController(RedController(), animated: true)
    }
}

class Service {
    weak var redCoontroller: RedController?
}

class RedController: UITableViewController {
    
    deinit {
        print("OS reclaiming memory for RedController")
    }
    
    let service = Service()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = .systemRed
        
        service.redCoontroller = self
    }
}
