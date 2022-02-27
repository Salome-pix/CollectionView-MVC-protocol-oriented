//
//  MovieCollectionViewCell.swift
//  movies-app
//
//  Created by Mcbook Pro on 22.02.22.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var image: UIImageView!
   
    @IBOutlet weak var movieName: UILabel!
    
    
    func setup(movie : Movie){
        image.image = movie.image!
        movieName.text = movie.name
    }
    
    

}
