//
//  MovieGridDetailsViewController.swift
//  Tipster
//
//  Created by Krina Patel on 9/23/22.
//

import UIKit
import AlamofireImage

class MovieGridDetailsViewController: UIViewController {

    @IBOutlet weak var gridBackdropView: UIImageView!
    @IBOutlet weak var gridPosterView: UIImageView!
    @IBOutlet weak var gridTitleLabel: UILabel!
    @IBOutlet weak var gridSynopsisLabel: UILabel!
    
    var movie: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        gridTitleLabel.text = movie["title"] as? String
        gridTitleLabel.sizeToFit()
        
        gridSynopsisLabel.text = movie["overview"] as? String
        gridSynopsisLabel.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        gridPosterView.af_setImage(withURL: posterUrl!)
        
        let gridBackdropPath = movie["backdrop_path"] as! String
        let gridBackdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + gridBackdropPath)
        gridBackdropView.af_setImage(withURL: gridBackdropUrl!)
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
