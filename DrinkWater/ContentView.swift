//
//  ContentView.swift
//  DrinkWater
//
//  Created by Metal_KJ on 2022/6/8.
//

import SwiftUI

 

struct ContentView: View {
    @State var isWatered = true
    
    
    var body: some View {
        VStack {
            ZStack {
                Image("background")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                Image(systemName: isWatered ? "hands.clap.fill" : "flame.fill")
                    .font(.system(size: 130))
                    .foregroundColor(isWatered ? .yellow : .red)
            }
            .frame(minHeight: 600)
            .shadow(radius: 10)
            Divider()
            
            Toggle(isOn: $isWatered) {
                Label("Is you watered?", systemImage: "drop.fill")
            }
            .foregroundColor(.blue)
        }
        .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// test commit to test
