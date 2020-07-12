//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by Marsel Khalikov on 12.07.2020.
//  Copyright © 2020 Marsel Khalikov. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {

    var image: UIImage?
    @IBOutlet weak var photoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        photoImageView.image = image
    }
    
    @IBAction func shareAction(_ sender: UIButton) {
    let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
    
        shareController.completionWithItemsHandler = {_, bool, _, _ in
            if bool {
                print("Успешно")
            }
        }
    present(shareController, animated: true, completion: nil)
    }

}
