//
//  ButtonStyle+Send.swift
//  ButtonSwiftUI
//
//  Created by Hafizh Mo on 15/05/22.
//

import Foundation
import SwiftUI

struct SendButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Image(systemName: "paperplane.fill")
                .symbolVariant(.fill)
                .padding(.vertical, 20)
                .padding(.leading, 20)
            configuration.label.padding(.trailing, 20)
        }
        .background(.blue)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .opacity(configuration.isPressed ? 0.5 : 1)
    }
}
