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
            Image(systemName: "speaker.wave.2", variableValue: 0.5)
                .resizable()
                .scaledToFit()
                .symbolRenderingMode(.multicolor)
                .padding()
                .background(Color(hue: 0.523, saturation: 0.342, brightness: 1.0))
                .cornerRadius(30)
                .shadow(color: .gray, radius:30, x: 20, y: 20)
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(.teal, lineWidth: 1))
                .padding()
                
            
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .padding()
                .frame(height: 150)
                .frame( maxWidth: .infinity)
//                .border(.orange, width: 1)
                .padding()

            Spacer()
            
            
            
            HStack{
                Button("Awesome") {
                    //action when but is pressed
                    messageString = "You are awesome"
                }
                .buttonStyle(.borderedProminent)
                
                Spacer()
                
                Button("Great") {
                    messageString = "You are great"
                }
                .buttonStyle(.borderedProminent)
            }
            //            .border(.purple, width:5)
            .padding()
        }
    }
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
