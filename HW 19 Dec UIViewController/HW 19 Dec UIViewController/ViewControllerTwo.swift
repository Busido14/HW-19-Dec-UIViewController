//
//  ViewControllerTwo.swift
//  HW 19 Dec UIViewController
//
//  Created by Артем Чжен on 19/12/22.
//

import UIKit

class ViewControllerTwo: UIViewController {
    @IBOutlet var imageView: UIImageView!

    var selectedImage: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "informition of \(selectedImage!.replacingOccurrences(of: ".png", with: ""))"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        if let imageToLoad = selectedImage {
            
            imageView.image = UIImage(named: imageToLoad)
            imageView.layer.borderWidth = 1
           
    
        }
       
    }
}

