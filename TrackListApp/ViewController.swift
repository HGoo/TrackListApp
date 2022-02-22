//
//  ViewController.swift
//  TrackListApp
//
//  Created by Николай Петров on 22.02.2022.
//

import UIKit

class ViewController: UITableViewController {
    
    //MARK: - IBOutlets
    //MARK: - Private Properties
    //MARK: - Publick Properties
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = "Cell index \(indexPath.row)" //Deprecated
        
        return cell
    }

}

