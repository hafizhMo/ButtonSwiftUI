//
//  DeleteButton.swift
//  ButtonSwiftUI
//
//  Created by Hafizh Mo on 16/05/22.
//

import SwiftUI

struct DeleteButton: View {
    let action: () -> Void
        
        var body: some View {
            
            Button(action: action) {
                Text("Throw it away! hush!")
            }
            .buttonStyle(DeleteButtonStyle(image: "trash.fill", color: .red))
        }
}

struct DeleteButton_Previews: PreviewProvider {
    static var previews: some View {
        DeleteButton {}
    }
}
