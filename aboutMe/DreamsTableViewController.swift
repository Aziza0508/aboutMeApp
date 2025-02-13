//
//  DreamsTableViewController.swift
//  aboutMe
//
//  Created by Aziza Gilash on 10.02.2025.
//

import UIKit

class DreamsTableViewController: UITableViewController {
        
    var arrayDreams = [
        
        Dreams(itemOne: "body1", itemTwo: "body2", itemThree: "body3", itemFour: "body4", itemFive: "body5", itemSix: "body6", dreamLabel: "Fitness Goals", 
               timeline: ["- by this day I have already lost 13 kilograms in a span of 6 months", "- now focusing on building muscle (bulking untill may 2025)", "- then cut untill I reach 57 kilos"]),
        
        Dreams(itemOne: "thailand1", itemTwo: "thailand2", itemThree: "thailand3", itemFour: "thailand4", itemFive: "thailand5", itemSix: "thailand6", dreamLabel: "Trip to Thailand",
               timeline: ["- save up around 1700 usd, which will happen by around june 2025", "- plan out a trip for the end of the Year, around November-December"]),
        
        Dreams(itemOne: "education1", itemTwo: "education2", itemThree: "education3", itemFour: "education4", itemFive: "education5", itemSix: "education6", dreamLabel: "Masters in Europe",
               timeline: ["- Pass an IELTS exam by march 2025", "- continue building my profile (possibly do research, and collect work experiences", "- collect document with help of consulting companies", "- apply for the list of European Universities in the beginning of 4th year", "- plan out my living (how to survive there(??))"]),
        
        Dreams(itemOne: "remote1", itemTwo: "remote2", itemThree: "remote3", itemFour: "remote4", itemFive: "remote5", itemSix: "remote6", dreamLabel: "Remote Job",
               timeline: ["- ugh, plan is unclear for now"])
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayDreams.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DreamsCell", for: indexPath)

        let imageViewOne = cell.viewWithTag(1) as? UIImageView
        imageViewOne?.image = UIImage(named: arrayDreams[indexPath.row].itemOne)
        imageViewOne?.layer.cornerRadius = 3
        
        let imageViewTwo = cell.viewWithTag(2) as? UIImageView
        imageViewTwo?.image = UIImage(named: arrayDreams[indexPath.row].itemTwo)
        imageViewTwo?.layer.cornerRadius = 3
        
        let imageViewThree = cell.viewWithTag(3) as? UIImageView
        imageViewThree?.image = UIImage(named: arrayDreams[indexPath.row].itemThree)
        imageViewThree?.layer.cornerRadius = 3
        
        let imageViewFour = cell.viewWithTag(4) as? UIImageView
        imageViewFour?.image = UIImage(named: arrayDreams[indexPath.row].itemFour)
        imageViewFour?.layer.cornerRadius = 3
        
        let imageViewFive = cell.viewWithTag(5) as? UIImageView
        imageViewFive?.image = UIImage(named: arrayDreams[indexPath.row].itemFive)
        imageViewFive?.layer.cornerRadius = 3
        
        let imageViewSix = cell.viewWithTag(6) as? UIImageView
        imageViewSix?.image = UIImage(named: arrayDreams[indexPath.row].itemSix)
        imageViewSix?.layer.cornerRadius = 3
        
        let dreamLabel = cell.viewWithTag(7) as? UILabel
        dreamLabel?.text = arrayDreams[indexPath.row].dreamLabel



        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 364
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DreamDetailsViewController") as! DreamDetailsViewController
        vc.dream = arrayDreams[indexPath.row]
        
//        navigationController?.show(vc, sender: self)
        present(vc, animated: true)
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
