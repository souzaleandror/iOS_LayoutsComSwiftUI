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
            // MARK: - VStack Principal
            VStack {
                
                // MARK: - VStack Header
                VStack{
                    Text("Alura Viagens")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: 20))
                        .padding(.top, 80)
                    
                    Text("ESPECIAL")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Book", size: 20))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                    
                    Text("BRASIL")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: 20))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                
                }
                .frame(width: view.size.width, height: 200, alignment: .top)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.purple/*@END_MENU_TOKEN@*/)
                .edgesIgnoringSafeArea(.all)
                
                
                List {
                    Text("Rio de Janeiro")
                    Text("Ceara")
                    Text("Atibaia")
                    Text("Rio de Janeiro")
                }
            }
            
    
        
        }
        

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
