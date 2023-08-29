//
//  UIApplication.swift
//  BeCoin
//
//  Created by André Porto on 24/08/23.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
