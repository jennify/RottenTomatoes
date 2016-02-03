//
//  DetailsViewController.swift
//  RottenTomatoes
//
//  Created by Jennifer Lee on 2/2/16.
//  Copyright © 2016 Jennifer Lee. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var posterTitleLabel: UILabel!
    @IBOutlet weak var posterTextView: UITextView!
    
    var movie: NSDictionary!
    override func viewDidLoad() {
        super.viewDidLoad()
        posterTitleLabel.text = movie["title"] as? String
        posterTextView.text = movie["overview"] as? String
        if let posterPath = movie["poster_path"] as? String{
            let baseUrl = "http://image.tmdb.org/t/p/w500/"
            let imageUrl = NSURL(string: baseUrl + posterPath)
            posterView?.setImageWithURL(imageUrl!)
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}
