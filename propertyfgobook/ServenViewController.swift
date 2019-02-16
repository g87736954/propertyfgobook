//
//  ServenViewController.swift
//  propertyfgobook
//
//  Created by User on 2019/2/14.
//  Copyright © 2019 g87. All rights reserved.
//

import UIKit

class ServenViewController: UIViewController {
    var pro:Pros?
    @IBOutlet weak var serventext: UITextView!
    @IBOutlet weak var servenimage1: UIImageView!
    
    @IBOutlet weak var servenimage2: UIImageView!
    
    @IBOutlet weak var cvbutton: UIButton!
    
    @IBAction func cvbutton(_ sender: Any) {
        if let controller = storyboard?.instantiateViewController(withIdentifier: "CVViewController") as? CVViewController {
            controller.imageName = pro?.CV

            present(controller, animated: true, completion: nil)
        }
    }
    
    
    
    
    
    override func viewDidLoad() {        super.viewDidLoad()
        if let pro = pro {
            servenimage1.image = UIImage(named: pro.servenimage1)
            servenimage2.image = UIImage(named: pro.servenimage2)
            serventext.text = pro.serventext
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

}
