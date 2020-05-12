//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Richard Gibbs on 5/11/20.
//  Copyright © 2020 Rich Gibbs. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Variable", definition: "A value that can change after it’s been initialized, indicated in Swift by the var keyword."), VocabularyWord(word: "Constant", definition: "A value that’s initialized once and cannot change, indicated in Swift by the let keyword."), VocabularyWord(word: "Class", definition: "A piece of code that describes the behavior and properties common to any particular type of object, essentially providing a blueprint for the object.")]
    

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        // Configure the cell...

        
        let vocabWord = vocabWords[indexPath.row]
        
        cell.textLabel?.text = vocabWord.word
        
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "ShowDefinitionSegue" {
            let definitionVC = segue.destination as? DefinitionViewController
            
            if let indexPath = tableView.indexPathForSelectedRow {
                
                let vocabWord = vocabWords[indexPath.row]
                
                definitionVC?.vocabWord = vocabWord
            }
        }
    }
    
}

