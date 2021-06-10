//
//  ViewController.swift
//  AfinitiTask
//
//  Created by Muhammad Suleman on 6/10/21.
//  Copyright © 2021 Muhammad Suleman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var progressTblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.progressTblView.tableFooterView = UIView()
    }
}

// MARK: - Table view methods

extension ViewController : UITableViewDelegate, UITableViewDataSource
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProgressTableCell", for: indexPath) as! ProgressTableCell
        cell.selectionStyle = .default
        cell.lblTitle.text = String(format: "Image %d", indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

