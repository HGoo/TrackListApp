//
//  DetailViewController.swift
//  TrackListApp
//
//  Created by Николай Петров on 22.02.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var trackNameLable: UILabel!
    
    var trackName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "Ramm")
        trackNameLable.text = trackName
        trackNameLable.numberOfLines = 0
    }
}
