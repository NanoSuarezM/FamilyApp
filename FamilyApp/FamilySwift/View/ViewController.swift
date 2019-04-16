//
//  ViewController.swift
//  FamilySwift
//
//  Created by Fernando Suarez Martinez on 22.03.19.
//  Copyright © 2019 Fernando Suarez Martinez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    private lazy var viewModel: ViewModel = {
        return ViewModel()
    }()
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel.cellViewModels[section].children.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.viewModel.cellViewModels.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.viewModel.cellViewModels[section].name
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let children = self.viewModel.cellViewModels[indexPath.section].children
        
        cell.textLabel?.text = children[indexPath.row].name
        
        return cell
    }
}

