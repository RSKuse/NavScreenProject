//
//  ViewControlleTwo.swift
//  NavScreenProject
//
//  Created by Reuben Simphiwe Kuse on 2023/03/23.
//

import UIKit

class ViewControllerTwo: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    lazy var infoTableView2: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.isScrollEnabled = true
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupTableViewConstraints2()
        registerCells2()
    }
    
    func setupTableViewConstraints2() {
        view.addSubview(infoTableView2)
        
        infoTableView2.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        infoTableView2.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        infoTableView2.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        infoTableView2.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    func registerCells2() {
        infoTableView2.register(ItemsTableViewCells.self,forCellReuseIdentifier: "ItemsTableViewCells")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return 1
        }
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let userCell = tableView.dequeueReusableCell(withIdentifier: "ItemsTableViewCells", for: indexPath) as! ItemsTableViewCells
        return userCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(80)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
