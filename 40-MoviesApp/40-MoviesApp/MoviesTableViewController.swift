//
//  MoviesTableViewController.swift
//  40-MoviesApp
//
//  Created by MAC on 28.04.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class MoviesTableViewController: UITableViewController {

    var movies = [Movie]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadData()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc = segue.destination as! MovieDetailVC
        guard let row = tableView.indexPathForSelectedRow?.row else { return }
        
        let movie = movies[row]
        vc.movie = movie
    
    }
    
    func loadData(){
        
        guard let jsonUrl = Bundle.main.url(forResource: "movies", withExtension: "json"), let data = try? Data(contentsOf: jsonUrl) else {
            print("movies")
            return
        }
        
        do {
            movies = try JSONDecoder().decode([Movie].self, from: data)
            print(movies.count)
            tableView.reloadData()
        } catch {
            print(error.localizedDescription)
        }
        
        
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MovieTableViewCell

        let row = movies[indexPath.row]
        
        cell.prepare(movie: row)

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
