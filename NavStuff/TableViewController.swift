//
//  TableViewController.swift
//  NavStuff
//
//  Created by James Campagno on 6/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let dirtyDancingSoundtrack = [
        "(I've Had) The Time of My Life",
        "Be My Baby",
        "She's Like the Wind",
        "Hungry Eyes",
        "STAY",
        "Yes",
        "You Don't Own Me",
        "Hey Baby",
        "Overload",
        "Love Is Strange",
        "Where Are You Tonight?",
        "In the Still of the Night"
    ]//aka dDS array
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dirtyDancingSoundtrack.count
        //tableView gets # of rows from dDS array
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DirtyCell", for: indexPath)
        //gives a cell from tableView to load with info
        
//        let songTitle = dirtyDancingSoundtrack[indexPath.row]
//        //grabs a song from dDS array, based on row, to be passed into the cell
//        cell.textLabel?.text = songTitle
//        //passes that into the cell. could this work if directly = dDS[indexPath.row]?
        
        cell.textLabel?.text = dirtyDancingSoundtrack[indexPath.row]
        //yep, gotta ask Jim if there was a reason he did it this way or was just to keep things nice and clear for us
        
        return cell
    }
}       //i'm guessing you would not want to pass directly usually, esp in the case of working with sets or dictionaries which are ?typed
