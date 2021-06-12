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
    let session = URLSession.shared
    let url = URL(string: "https://www.dropbox.com/s/6xlpner3s6q336f/file1.mp4?dl=1")
//    let url:[String] = ["", https://www.dropbox.com/s/73ymbx6icoiqus9/file2.mp4?dl=1","https://www.dropbox.com/s/4pw4jwiju0eon6r/file3.mp4?dl=1"]
//
    override func viewDidLoad() {
        super.viewDidLoad()
        self.progressTblView.tableFooterView = UIView()
    }
    
    func downloadTask()
    {
        let task = session.dataTask(with: url!, completionHandler: { data, response, error in
            
            // Do something...
        })
        task.resume()
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

