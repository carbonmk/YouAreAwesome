//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Michael Carbone on 8/31/22.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = " "
    
    var body: some View {
        VStack {
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .padding()
                .frame(height: 150)
                .frame( maxWidth: .infinity)
                .border(.orange, width: 1)
            
            HStack{
                Button("Awesome") {
                    //action when but is pressed
                    messageString = "You are awesome"
                }
                .buttonStyle(.borderedProminent)
                
                Button("Great") {
                    messageString = "You are great"
                }
                .buttonStyle(.borderedProminent)
            }
            .border(.purple, width:5)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
