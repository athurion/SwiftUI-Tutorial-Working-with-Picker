//
//  ContentView.swift
//  SwiftUI Tutorial: Working with Picker
//
//  Created by Alvin Sosangyo on 02/10/22.
//


import SwiftUI

struct ContentView: View {
    
    @State private var backgroundColor: ColorList = .white
    
    var body: some View {
        
        ZStack {
            
            switch backgroundColor {
            case .yellow: Color.yellow.ignoresSafeArea(.all)
            case .red: Color.red.ignoresSafeArea(.all)
            case .black: Color.black.ignoresSafeArea(.all)
            default: Color.white.ignoresSafeArea(.all)
            }
            
            Picker("Select color", selection: $backgroundColor) {
                ForEach(ColorList.allCases) { index in
                    Text(index.rawValue)
                }
            }
            
        } //ZStack
        
    } //body
    
} //ContentView

enum ColorList: String, CaseIterable, Identifiable {
    case white, yellow, red, black
    var id: Self { self }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

