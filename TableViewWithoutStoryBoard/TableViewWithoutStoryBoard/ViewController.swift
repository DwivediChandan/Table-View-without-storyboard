//
//  ViewController.swift
//  TableViewWithoutStoryBoard
//
//  Created by Administrator on 11/6/19.
//  Copyright © 2019 Administrator. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let tableView = UITableView()
    
    let tableViewCellReuseIdentifier = "Cell"
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: tableViewCellReuseIdentifier)!
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}

extension ViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeLayouts()
    }
    
    func makeLayouts() {
        view.backgroundColor = .white
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier:tableViewCellReuseIdentifier)
        tableView.delegate = self
        tableView.dataSource = self
        
        view.addSubview(tableView)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        tableView.frame = view.bounds
        
   }
}

