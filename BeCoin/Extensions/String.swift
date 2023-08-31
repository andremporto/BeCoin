//
//  String.swift
//  BeCoin
//
//  Created by André Porto on 31/08/23.
//

import Foundation

extension String {
    
    var removingHTMLOccurrances: String {
        return self.replacingOccurrences(
            of: "<[^>]+>",
            with: "",
            options: .regularExpression,
            range: nil
        )
    }
    
}
