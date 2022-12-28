//
//  ContentView.swift
//  Challenge8_scrollableView
//
//  Created by Steven Garcia on 12/28/22.
//

import SwiftUI

struct ContentView: View {


    var body: some View {
         ScrollView{
             LazyVStack {
                ForEach(0..<150) { index in
                    var first_color = Color(.sRGB, red: Double.random(in: 0..<1), green: Double.random(in: 0..<1), blue: Double.random(in: 0..<1))
                    var second_color = Color(.sRGB, red: Double.random(in: 0..<1), green: Double.random(in: 0..<1), blue: Double.random(in: 0..<1))
                    Rectangle()
                        .fill(RadialGradient(
                            gradient: Gradient(colors: [first_color, second_color]),
                            center: UnitPoint(x: 0.5, y: 0.5),
                            startRadius: 0,
                            endRadius: 200
                        ))
                        .frame(height: pow(1.1, CGFloat(index)))
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
