//
//  Model.swift
//  movies-app
//
//  Created by Mcbook Pro on 22.02.22.
//

import Foundation
import UIKit

struct Movie{
    var image: UIImage?
    var name: String
    var Country :String
    var genre: String
    var release: String
    var isFavorite : Bool?
}


var movies = [Movie(image: #imageLiteral(resourceName: "Avengers"), name: "Avengers", Country: "USA", genre: "Thriller ", release: "2000"),
             Movie(image: #imageLiteral(resourceName: "Glass"), name: "Glass", Country: "USA", genre: "Thriller ", release: "2013"),
             Movie(image: #imageLiteral(resourceName: "inseption"), name: "Enception", Country: "EUR", genre: "Thriller ", release: "2017"),
             Movie(image: #imageLiteral(resourceName: "Avengers"), name: "Avengers", Country: "USA", genre: "Thriller", release: "2017"),
             Movie(image: #imageLiteral(resourceName: "Avengers"), name: "Avengers", Country: "", genre: "Thriller", release: "2017"),
             Movie(image: #imageLiteral(resourceName: "Avengers"), name: "Avengers", Country: "", genre: "Thriller", release: "2013"),
              Movie(image: #imageLiteral(resourceName: "Glass"), name: "Glass", Country: "USA", genre: "Thriller ", release: "2013"),
              Movie(image: #imageLiteral(resourceName: "Glass"), name: "Glass", Country: "USA", genre: "Thriller ", release: "2013")]
