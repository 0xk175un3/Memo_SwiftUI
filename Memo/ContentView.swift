//
//  ContentView.swift
//  Memo
//
//  Created by Artemiy Stepanov on 03.07.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) {
                index in
                CardView(isFaceUp: true)
            }
        }
        .padding()
        .foregroundColor(.orange)
        .font(.largeTitle)
    }
}

struct CardView: View {
    var isFaceUp: Bool
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 25.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 25.0).stroke(lineWidth: 3.0)
                Text("👻")
            }
        }
    }
        }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
