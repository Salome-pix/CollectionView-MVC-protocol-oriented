//
//  ViewController.swift
//  movies-app
//
//  Created by Mcbook Pro on 22.02.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
        
    }

}

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! MovieCollectionViewCell
        cell.setup(movie:movies[indexPath.row] )
        
        return cell
    }
    
}

extension ViewController:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 180, height: 200)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let descriptionVC = storyBoard.instantiateViewController(withIdentifier: "description") as! descriptionViewController
        
        descriptionVC.movie = movies[indexPath.row]
        descriptionVC.delegate = self
        descriptionVC.index = indexPath.row
        descriptionVC.isFav = movies[indexPath.row].isFavorite
        
        
        present(descriptionVC, animated: true)
        
    }
}

extension ViewController:sendUpdatedDataDelegate{
    func reloadModel(curentStateOfisFav: Bool, index: Int) {
        
        movies[index].isFavorite = curentStateOfisFav
        print(movies[index])
    }
    
}
    
    

