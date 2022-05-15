//
//  ContentView.swift
//  ButtonSwiftUI
//
//  Created by Hafizh Mo on 15/05/22.
//

import SwiftUI

struct ContentView: View {
    @State private var clickCounter: Int = 0
    
    var body: some View {
        ScrollView {
            VStack {
                Group {
                    Divider().padding(.vertical, 18)
                    Text("Role").bold().padding(.bottom, 14)
                    Button(role: .cancel) {
                                            
                    } label: {
                        Text("Cancel Example Role")
                    }
                    
                    Button(role: .destructive) {
                        
                    } label: {
                        Text("Destructive Role")
                    }
                    
                    Button(role: .none) {
                        
                    } label: {
                        Text("Default Role")
                    }
                }
                
                Group {
                    Divider().padding(.vertical, 18)
                    Text("Action").bold()
                    Text("Number of click: \(clickCounter)")
                    HStack {
                        Button {
                            clickCounter += 1
                        } label: {
                            Text("Increase 1")
                        }.padding(.trailing, 18)
                        
                        Button(action: increaseTwo) {
                            Text("Increase 2")
                        }.padding(.leading, 18)
                    }.padding()
                }
                
                Group {
                    Divider().padding(.vertical, 18)
                    Text("Action Area").bold()
                    
                    Button {
                        print("Yeay, I'm Clicked!")
                    } label: {
                        Text("Click Me!")
                    }
                    .frame(maxWidth: .infinity, minHeight: 44)
                    .background(.indigo)
                    .tint(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .padding(8)
                    
                    Button {
                        print("Yeay, I'm Clicked!")
                    } label: {
                        Text("Click Me!")
                            .frame(maxWidth: .infinity, minHeight: 44)
                            .background(.indigo)
                            .tint(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                    .padding(.horizontal, 8)
                }
                
                Group {
                    Divider().padding(.vertical, 18)
                    Text("ButtonStyle").bold()
                    HStack {
                        Button("Send") {
                            
                        }.buttonStyle(SendButtonStyle())
                        Button("Like") {
                            print("ButtonStyle using dot format")
                        }.buttonStyle(.like)
                    }
                }
                
                Group {
                    Divider().padding(.vertical, 18)
                    Text("Component").bold()
                    DeleteButton {
                        print("Uhuy...")
                    }
                    BookmarkButton(title: "Keep it, Bookmarked!") {
                        print("Uhuy...(2)")
                    }
                }
                
                Divider().padding(.vertical, 18)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

private extension ContentView {
    
    func increaseTwo() {
        clickCounter += 2
    }
}
