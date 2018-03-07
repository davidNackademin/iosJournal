//
//  Journal.swift
//  Wed7marsJournal
//
//  Created by David Svensson on 2018-03-07.
//  Copyright © 2018 David Svensson. All rights reserved.
//

import Foundation

class Journal {
    
    private var entries = [JournalEntry]()
    
    // computed property
    var count: Int {
        return entries.count
    }
    
    func addEntry(entry: JournalEntry) {
        entries.append(entry)
    }

    func entry(index: Int) -> JournalEntry? {
        if index >= 0 && index < entries.count {
            return entries[index]
        } else {
            return nil
        }
    }
}
