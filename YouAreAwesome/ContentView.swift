//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Michael Carbone on 8/31/22.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "Namaste"
    @State private var imageName = ""
    
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
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
                
                let im0 = "image0"
                let im1 = "image1"
                //action when but is pressed
                messageString = (messageString == message1 ? message2 : message1)
                imageName = (imageName == im0 ? im1 : im0)
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

