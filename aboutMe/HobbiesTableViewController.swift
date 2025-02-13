//
//  HobbiesTableViewController.swift
//  aboutMe
//
//  Created by Aziza Gilash on 10.02.2025.
//

import UIKit

class HobbiesTableViewController: UITableViewController {
    
    var arrayHobbies = [
        Hobby(image: "painting", hobbyLabel: "Drawing", hobbyDescription: "I loved painting since childhood, I am glad it found a lot of support in my family. I still have a collection of colored pencils that my dad bought for me"),
        Hobby(image: "cooking", hobbyLabel: "Cooking", hobbyDescription: "As soon as I got more into healthy lifestyle, cooking became one of my favourite activities, where I can pay more attention to nutritious content of my food"),
        Hobby(image: "spa", hobbyLabel: "Going to Spa-s", hobbyDescription: "I guess every woman needs spa days from time to time to feel rested and fresh. I love it too, because it accelerates the lymphatic system"),
        Hobby(image: "coffeeShops", hobbyLabel: "Coffeeshops", hobbyDescription: "There is no better way for me to wake up on a Saturday morning, than to grab a book, and go chill drinking my latte on a coconut milk, with a caramel cyrup"),
        Hobby(image: "gym", hobbyLabel: "Strength Training", hobbyDescription: "In current episode of my life I am focused on building muscle, so in order balance my studies, internship and other activities, I am at the gym at 6 a.m 3 times a week"),
        Hobby(image: "volunteering", hobbyLabel: "Volunteering", hobbyDescription: "It is a great side quest activity for fun time with friends, free snacks, and free access to some events"),
        Hobby(image: "walking", hobbyLabel: "Watching Sunsets", hobbyDescription: "Sunsets in my hometown, Atyrau, are the most beautiful things you could ever witness in your life. Sometimes I enjoy boating on the Ural river and watch the sun go down"),
        Hobby(image: "forte", hobbyLabel: "Internship", hobbyDescription: "I am also currently interning as a member of IT support team at ForteBank's Almaty branch, just for the fun of it, haha"),
        Hobby(image: "bookClub", hobbyLabel: "Book Club", hobbyDescription: "Once a month I take part of book club meetings, where we discuss the book we chose the previous month, talking about our thoughts and feelings on it"),
        Hobby(image: "ios", hobbyLabel: "Mentorsip Program", hobbyDescription: "Being a mentie helps me have a little more direction on things and concepts I am learning regarding iOS Development")
]

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarItem.selectedImage = UIImage(systemName: "moon.stars.circle")

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
        return arrayHobbies.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "hobbyCell", for: indexPath)

        let label = cell.viewWithTag(2) as! UILabel
        label.text = arrayHobbies[indexPath.row].hobbyLabel
        
        let description = cell.viewWithTag(3) as! UITextView
        description.text = arrayHobbies[indexPath.row].hobbyDescription
        
        let imageView = cell.viewWithTag(1) as! UIImageView
        imageView.image = UIImage(named: arrayHobbies[indexPath.row].image)
        imageView.layer.cornerRadius = 5


        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 254
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
