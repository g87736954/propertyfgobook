//
//  ProTableViewController.swift
//  propertyfgobook
//
//  Created by User on 2019/2/14.
//  Copyright © 2019 g87. All rights reserved.
//

import UIKit

class ProTableViewController: UITableViewController {
    
//    var pros = [Pros(name: "Saber",  imageName: "saber"),
//                Pros(name: "Lancer",  imageName: "lancer"),
//                Pros(name: "Archer",  imageName: "archer"),
//                Pros(name: "Caster",  imageName: "caster"),
//                Pros(name: "Rider",  imageName: "rider"),
//                Pros(name: "Assassin",  imageName: "assassin"),
//                Pros(name: "Berserker",  imageName: "berserker"),
//                Pros(name: "Ruler",  imageName: "ruler"),
//                Pros(name: "Avenger",  imageName: "avenger"),
//                Pros(name: "Altergo",  imageName: "altergo"),
//                Pros(name: "Mooncencer",  imageName: "MoonCancer"),
//                Pros(name: "Foreigner",  imageName: "Foreigner"),
//                Pros(name: "Shielder",  imageName: "shilder"),]
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return pros.count
    }

    var number = 0
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "procell", for: indexPath) as! ProTableViewCell
        
        let pro = pros[indexPath.row]
        
        cell.proimage.image = UIImage(named: pro.imageName)
        cell.prolabel.text = pro.name
        // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if let row = tableView.indexPathForSelectedRow?.row, let controller = segue.destination as? ServenViewController {
            
            controller.pro = pros[row]
        }
        
    }
 

}
