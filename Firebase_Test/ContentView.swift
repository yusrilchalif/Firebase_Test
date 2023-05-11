//
//  ContentView.swift
//  Firebase_Test
//
//  Created by Yusril on 26/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    var body: some View {
        
        NavigationView {
            List {
                Text("Hello")
                Text("Hello")
                Text("Hello")
                Text("Hello")
            }.navigationTitle("List")
        }
        .toolbar {
            ToolbarItem(placement: .bottomBar) {
                HStack {
                    TextField("Enter your name", text: $name)
                        .frame(minWidth: 100, idealWidth: 150, maxWidth: 240, minHeight: 30, idealHeight: 40, maxHeight: 50, alignment: .leading)
                    Spacer()
                    Button(action: {
                        print("button tapped!")
                    }) {
                        HStack {
                            Image(systemName: "plus")
                                .font(.title)
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(40)
                    }
                }
            }
        }
    }
}

//MARK: View
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
