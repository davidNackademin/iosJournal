//
//  JournalEntryViewController.swift
//  Wed7marsJournal
//
//  Created by David Svensson on 2018-03-07.
//  Copyright © 2018 David Svensson. All rights reserved.
//

import UIKit

class JournalEntryViewController: UIViewController {

    @IBOutlet weak var journalEntryContents: UITextView!
    
    var journalEntry: JournalEntry?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let entry = journalEntry {
            journalEntryContents.text = entry.contents
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
