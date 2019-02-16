//
//  CVViewController.swift
//  propertyfgobook
//
//  Created by User on 2019/2/16.
//  Copyright © 2019 g87. All rights reserved.
//

import UIKit

class CVViewController: UIViewController {
    var imageName: String?
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let imageName = imageName {
            imageView.image = UIImage(named: imageName)
        }        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)    }
    
}
