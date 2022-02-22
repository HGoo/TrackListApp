//
//  TrackListViewController.swift
//  TrackListApp
//
//  Created by Николай Петров on 22.02.2022.
//

import UIKit

class TrackListViewController: UITableViewController {

    //MARK: - Publick Properties
    let trackList = ["Rammlied - Rammstein",
                     "Ich tu dir weh - Rammstein",
                     "Waidmanns Heil - Rammstein",
                     "Haifisch - Rammstein",
                     "B******** (Bückstabü) - Rammstein",
                     "Frühling in Paris - Rammstein",
                     "Wiener Blut - Rammstein",
                     "Pussy - Rammstein",
                     "Liebe ist für alle da - Rammstein",
                     "Mehr - Rammstein",
                     "Roter Sand - Rammstein"]
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trackList.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TrackName", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        content.text = trackList[indexPath.row]
        content.image = UIImage(named: "Ramm")
        content.imageProperties.maximumSize = CGSize(width: 50, height: 50)
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! DetailViewController
            detailVC.trackName = trackList[indexPath.row]
        }
        
    }

}
