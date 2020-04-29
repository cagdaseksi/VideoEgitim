//
//  MovieDetailVC.swift
//  40-MoviesApp
//
//  Created by MAC on 29.04.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class MovieDetailVC: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var lblcat: UILabel!
    @IBOutlet weak var lblDuration: UILabel!
    @IBOutlet weak var lblRating: UILabel!
    @IBOutlet weak var lblSummary: UITextView!
    
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        image.image = UIImage(named: movie.imageSmall)
        lblTitle.text = movie.title
        lblRating.text = "⭐️ \(movie.rating)/10"
        lblSummary.text = movie.summary
        lblcat.text = movie.categoriesDescription
        lblDuration.text = movie.duration
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
