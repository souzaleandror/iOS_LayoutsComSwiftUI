//
//  ContentView.swift
//  alura-viagens
//
//  Created by Leandro Rodrigues on 03.08.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader { view in
            VStack {
                HeaderView().frame(width: view.size.width, height: 240, alignment: .top)
                
                List(viagens) {
                    viagem in CelulaViagemView(viagem: viagem)
                }
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// UIKit : Storyboard -> XML -> ViewController
// SwiftUI: View

// VStack = Vertical StackView
// HStack = Horizontal StackView
// ZStack = Over other element
