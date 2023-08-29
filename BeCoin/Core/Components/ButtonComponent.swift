//
//  ButtonComponent.swift
//  BeCoin
//
//  Created by André Porto on 25/08/23.
//

import SwiftUI

@ViewBuilder
func closeButtonComponent(onClick: @escaping () -> Void) -> some View {
    Button(action: {
        onClick()
    }, label: {
        Image(systemName: "xmark")
            .font(.headline)
    })
}

