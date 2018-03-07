//
//  JournalEntry.swift
//  Wed7marsJournal
//
//  Created by David Svensson on 2018-03-07.
//  Copyright © 2018 David Svensson. All rights reserved.
//

import Foundation

class JournalEntry: CustomStringConvertible {
  
    let date: Date
    let contents: String
    let dateFormatter = DateFormatter()
    
    var description: String {
        return dateFormatter.string(from: date)
    }
    
    init(date: Date, contents: String) {
        self.date = date
        self.contents = contents
        dateFormatter.dateFormat = "yyyy-MM-dd"
    }
     
}
