//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Michael Carbone on 8/31/22.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "Namaste"
    
    var body: some View {
        VStack {
            Spacer()
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .padding()
                .frame(height: 150)
                .frame( maxWidth: .infinity)
                .padding()
            
            Spacer()
            
            
            
          
                Button("Show Message") {
                    let message1 = "You are awesome"
                    let message2 = "You are great"
                    //action when but is pressed
                    if messageString == message1{
                        messageString = message2
                    } else { messageString = message1}
                }
                .buttonStyle(.borderedProminent)
                

                    .padding()
            
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
