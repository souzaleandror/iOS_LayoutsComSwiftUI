//
//  ContentView.swift
//  alura-viagens
//
//  Created by Leandro Rodrigues on 03.08.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Primeira aula de Swift")
            Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
        }
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// UIKit : Storyboard -> XML -> ViewController
// SwiftUI: View
