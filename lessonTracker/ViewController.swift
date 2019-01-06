//
//  ViewController.swift
//  lessonTracker
//
//  Created by Nathan Sepulveda on 1/5/19.
//  Copyright © 2019 Nathan Sepulveda. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let namesArray = ["Jim","Bob", "Tim", "Sue","Catherine"]
    let instrumentsArray = ["Guitar", "Piano", "Bass", "Flute", "Cello"]
    let durationsArray = ["30", "60", "60", "45", "30"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return namesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "studentCell") as! StudentCell
        cell.nameLabel.text = namesArray[indexPath.row]
        cell.instrumentLabel.text = instrumentsArray[indexPath.row]
        cell.durationLabel.text = durationsArray[indexPath.row]
        
        return cell
    }
    

    @IBOutlet weak var tableView: UITableView!
    @IBAction func addButtonClicked(_ sender: Any) {
        print("add button tapped")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

