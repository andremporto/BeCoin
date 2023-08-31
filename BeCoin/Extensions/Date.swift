//
//  Date.swift
//  BeCoin
//
//  Created by André Porto on 31/08/23.
//

import Foundation

extension Date {
    
    // "2021-03-13T20:49:26.606Z"   ->  "yyyy-MM-dd'T'HH:mm:ss.SSSZ"  /  "dd-MM-yyyy'T'HH:mm:ss.SSSZ"
    init(coinGeckoString: String) {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM-yyyy'T'HH:mm:ss.SSSZ"
        let date = formatter.date(from: coinGeckoString) ?? Date()
        self.init(timeInterval: 0, since: date)
    }
    
    private var shortFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }
    
    func asShortDateString() -> String {
        return shortFormatter.string(from: self)
    }
    
}
