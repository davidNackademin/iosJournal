//
//  JournalTableViewController.swift
//  Wed7marsJournal
//
//  Created by David Svensson on 2018-03-07.
//  Copyright © 2018 David Svensson. All rights reserved.
//

import UIKit

class JournalTableViewController: UITableViewController {

    let journal = Journal()
    
    let cellReuseIDentifier = "JournalEntryCell"
    let journalEntrySegueId = "journalEntry"
    let newJournalEntrySegueId = "newJournalEntry"
    
    //let sampleData = (0..<1000).map{"Cell \($0)"}
    //let sampleData = (0..<1000).map({(index: Int) -> String in return "Cell \(index)" })
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for index in 0..<3 {
            journal.addEntry(entry: JournalEntry(date: Date(), contents: "Entry \(index)"))
        }
        
//        for index in 0..<1000 {
//            sampleData.append("Cell \(index)")
//        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

   
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        return journal.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIDentifier, for: indexPath)
        
        if let label = cell.textLabel,
            let entry = journal.entry(index: indexPath.row)
        {
            label.text = "\(entry)"
        }
        
        return cell
    }
    

    // MARK: - Navigation


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == journalEntrySegueId {
            if let journalEntryViewController = segue.destination as? JournalEntryViewController,
                let cell = sender as? UITableViewCell,
                let indexPath = tableView.indexPath(for: cell),
                let entry = journal.entry(index: indexPath.row) {
                journalEntryViewController.journalEntry = entry
            }
        } else if segue.identifier == newJournalEntrySegueId {
            if let newJournalEntryViewController = segue.destination as? NewJournalEntryViewController {
                newJournalEntryViewController.journal = journal
            }
        }
    }
}
