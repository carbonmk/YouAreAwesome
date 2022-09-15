//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Michael Carbone on 8/31/22.
//
import SwiftUI
import AVFAudio

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageName = ""
    @State private var lastMessageNumber = -1
    @State private var lastImageNumber = -1
    @State private var lastSoundNumber = -1
    @State private var audioPlayer: AVAudioPlayer!
    
    
    
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
                .padding()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
            
            Spacer()
            
            Button("Show Message") {
                let messages = ["You are awesome",
                                "You are great",
                                "You are fantastic",
                                "fabulous? thats you",
                                "You make me smile",
                                "when the genius bar needs help they call you"]
                
                lastMessageNumber = nonRepeatingRandom(upperBound: messages.count-1, lastNumber: lastMessageNumber)
                messageString = messages[lastMessageNumber]
                
                lastImageNumber = nonRepeatingRandom(upperBound: 9, lastNumber: lastImageNumber)
                imageName = "image\(lastImageNumber)"
                
                lastSoundNumber = nonRepeatingRandom(upperBound: 5, lastNumber: lastSoundNumber)
                playSound(soundName: "sound\(lastSoundNumber)")
                
                
            }
            .buttonStyle(.borderedProminent)
            
            .padding()
            
        }
    }
    
    func nonRepeatingRandom(upperBound: Int, lastNumber: Int) -> Int {
        var newNumber: Int
        repeat {
            newNumber = Int.random(in: 0...upperBound)
        }while newNumber == lastNumber
        return newNumber
        
        
    }
    func playSound(soundName: String) {
        guard let soundFile = NSDataAsset(name: soundName) else {
            print("🤬 Could not read file named \(soundName)")
            return
        }
        do {
            audioPlayer = try AVAudioPlayer(data: soundFile.data)
            audioPlayer.play()
        } catch {
            print("🤪 ERROR: \(error.localizedDescription) creating audio player")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


