//
//  ViewController.swift
//  NavScreenProject
//
//  Created by Reuben Simphiwe Kuse on 2023/03/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var arrayOfCities = ["Cape Town", "Johanesburg", "Durban", "Bloemfontein"]
    
    lazy var infoTableView: UITableView = {
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
        setupTableViewConstraints()
        registerCells()
        
        arrayOfCities.append("Rusternburg")
        arrayOfCities.append("Limpopo")
        
        arrayOfCities += ["Chicago", "New York", "London"]
    }
    
    func setupTableViewConstraints() {
        view.addSubview(infoTableView)
        
        infoTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        infoTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        infoTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        infoTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    func registerCells() {
        infoTableView.register(FoldersTableViewCells.self,forCellReuseIdentifier: "FoldersTableViewCells")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfCities.count // 4 number of items in the array
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let userCell = tableView.dequeueReusableCell(withIdentifier: "FoldersTableViewCells", for: indexPath) as! FoldersTableViewCells
        userCell.titleLabel.text = arrayOfCities[indexPath.row] //"\(indexPath.row)"
        return userCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(40)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        /*
        let detailViewController = DetailViewController()
        present(detailViewController, animated: false)
        */
    }
}
