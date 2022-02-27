//
//  descriptionViewController.swift
//  movies-app
//
//  Created by Mcbook Pro on 23.02.22.
//

import UIKit

protocol sendUpdatedDataDelegate{
    func reloadModel(curentStateOfisFav : Bool, index : Int)
}

class descriptionViewController: UIViewController {
    
    var delegate : sendUpdatedDataDelegate?
    var movie : Movie?
    var isFav : Bool?
    var index : Int?
    
    func setTheValue(){
        isFav = movie?.isFavorite
    }
    
    
    
     @IBOutlet weak var movieImage: UIImageView!
    
    @IBOutlet weak var buttonFavorite: UIButton!
    
    @IBOutlet weak var country: UILabel!
    
    @IBOutlet weak var ganre: UILabel!
    
    @IBOutlet weak var reliase: UILabel!
    
    @IBOutlet weak var descriptionText: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let image = UIImage(named: "unselected-heart-45") {
            buttonFavorite.setImage(image, for: .normal)
        }
        
        if movie!.isFavorite == true{
            if let image = UIImage(named: "selected-50") {
                buttonFavorite.setImage(image, for: .normal)
            }
        }
        setTheValue()
        set()
    }
    
    @IBAction func setFavImage(_ sender: UIButton) {
        
        if movie?.isFavorite == true{
            if let image = UIImage(named: "unselected-heart-45") {
                sender.setImage(image, for: .normal)
                movie?.isFavorite = false
                isFav = false
                self.delegate?.reloadModel(curentStateOfisFav: isFav!,index: index!)
            }
        }else{
            if let image = UIImage(named: "selected-50") {
                buttonFavorite.setImage(image, for: .normal)
                movie?.isFavorite = true
                isFav = true
                self.delegate?.reloadModel(curentStateOfisFav: isFav!,index: index!)
            }
            
        }
        
    }
    
    func set(){
        movieImage.image = movie?.image
        country.text = movie?.Country
        ganre.text = movie?.genre
        reliase.text = movie?.release
    }

    
}
