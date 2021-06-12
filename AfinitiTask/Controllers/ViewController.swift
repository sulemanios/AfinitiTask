//
//  ViewController.swift
//  AfinitiTask
//
//  Created by Muhammad Suleman on 6/10/21.
//  Copyright © 2021 Muhammad Suleman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, URLSessionDownloadDelegate {
    
    var tasks: [DownloadTaskModel] = []
    let task1 = DownloadTaskModel()
    let task2 = DownloadTaskModel()
    let task3 = DownloadTaskModel()
    
    @IBOutlet weak var progressTblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.progressTblView.tableFooterView = UIView()
        
        task1.name = "Tutorial 01"
        task1.url = URL(string: "https://www.dropbox.com/s/6xlpner3s6q336f/file1.mp4?dl=1")!
        
        task2.name = "Tutorial 02"
        task2.url = URL(string: "https://www.dropbox.com/s/73ymbx6icoiqus9/file2.mp4?dl=1")!
        
        task3.name = "Tutorial 03"
        task3.url = URL(string: "https://www.dropbox.com/s/4pw4jwiju0eon6r/file3.mp4?dl=1")!
    }
    
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) {
        print("Finished downloading to \(location).")
    }
}


// MARK: - Table view methods

extension ViewController : UITableViewDelegate, UITableViewDataSource
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return self.tasks.count
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProgressTableCell", for: indexPath) as! ProgressTableCell
        cell.selectionStyle = .default
        cell.lblTitle.text = String(format: "Tutorial 0%d", indexPath.row+1)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.row {
        case 0:
            self.task1.downloadTask = URLSession.shared.downloadTask(with: self.task1.url, completionHandler: { (url, response, error) in
                
                if (error == nil)
                {
                    print(response!)
                }
                else
                {
                    print(error!)
                }
            })
            
            
            
        case 1:
            self.task2.downloadTask = URLSession.shared.downloadTask(with: self.task2.url, completionHandler: { (url, response, error) in
                
                if (error == nil)
                {
                    print(response!)
                }
                else
                {
                    print(error!)
                }
            })
        
        case 2:
            self.task3.downloadTask = URLSession.shared.downloadTask(with: self.task3.url, completionHandler: { (url, response, error) in
                
                if (error == nil)
                {
                    print(response!)
                }
                else
                {
                    print(error!)
                }
            })
        default:
            return
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

