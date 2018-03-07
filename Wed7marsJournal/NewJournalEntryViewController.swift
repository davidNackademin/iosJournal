//
//  NewJournalEntryViewController.swift
//  Wed7marsJournal
//
//  Created by David Svensson on 2018-03-07.
//  Copyright © 2018 David Svensson. All rights reserved.
//

import UIKit

class NewJournalEntryViewController: UIViewController {

    @IBOutlet weak var journalEntryContents: UITextView!
    
    var journal: Journal?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func save(_ sender: UIBarButtonItem) {
        let entry = JournalEntry(date: Date(), contents: journalEntryContents.text)
        journal?.addEntry(entry: entry)
        dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
