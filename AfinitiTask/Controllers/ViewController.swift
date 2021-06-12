//
//  ViewController.swift
//  AfinitiTask
//
//  Created by Muhammad Suleman on 6/10/21.
//  Copyright © 2021 Muhammad Suleman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tasks: [DownloadTaskModel] = []
    
    @IBOutlet weak var progressTblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.progressTblView.tableFooterView = UIView()
        let task1 = DownloadTaskModel()
        task1.name = "Image 01"
        task1.url = URL(string: "https://www.dropbox.com/s/6xlpner3s6q336f/file1.mp4?dl=1")!
        
        task1.downloadTask = URLSession.shared.downloadTask(with: task1.url, completionHandler: { (url, response, error) in
            
            if (error == nil)
            {
                
            }
            else
            {
                
            }
        })
    }
}


// MARK: - Table view methods

extension ViewController : UITableViewDelegate, UITableViewDataSource
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tasks.count
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

