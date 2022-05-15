//
//  ButtonStyle+Delete.swift
//  ButtonSwiftUI
//
//  Created by Hafizh Mo on 16/05/22.
//

import Foundation
import SwiftUI

struct DeleteButtonStyle: ButtonStyle {
    
    let image: String
    let color: Color
    
    func makeBody(configuration: Configuration) -> some View {
        
        HStack {
            Image(systemName: image)
                .symbolVariant(.fill)
                .padding(.vertical, 20)
                .padding(.leading, 20)
            configuration.label.padding(.trailing, 20)
        }
        .background(color)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .opacity(configuration.isPressed ? 0.7 : 1)
    }
}
