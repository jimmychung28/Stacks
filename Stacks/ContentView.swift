//
//  ContentView.swift
//  Stacks
//
//  Created by Jimmy Chung on 2023-03-21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack(alignment: .bottom, spacing: 20) {
                Thumbnail()
                MixDescription()
            }
            .padding()
        .frame(minHeight:150, maxHeight: 250)
            Spacer()
        }
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Thumbnail()
            .padding()
            .previewLayout(.fixed(width:250,height:250))
        ContentView()
    }
}

struct Thumbnail: View {
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .top)){
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.orange)
                    .aspectRatio(1, contentMode: .fit)
                    .shadow(radius: 10)
                Image(systemName: "play.fill")
                    .resizable()
                    .frame(width: 50,height: 50)
                    .foregroundColor(.white)
                    .opacity(0.4)
            }
            VStack(alignment: .leading) {
                Text("Meow!")
                    .font(.largeTitle)
                    .fontWeight(.black)
                Text("Mix")
                    .font(.largeTitle)
            }
            .foregroundColor(.white)
            .padding()
        }
    }
}

struct ButtonLabel: View {
    
    let title: String
    let systemImage: String
    
    var body: some View {
        HStack {
            Spacer()
            Label(title,systemImage: systemImage)
            Spacer()
        }
        .padding(.vertical)
        .background(Color.gray.opacity(0.15))
        .cornerRadius(12)
    }
}

struct Buttons: View {
    var body: some View {
        HStack(spacing:12.0) {
            Button(action: {print("Play!")}, label: {
                ButtonLabel(title:"Play",systemImage: "play.fill")
            })
            Button(action: {print("Shuffle!")}, label: {
                ButtonLabel(title:"Shuffle",systemImage: "shuffle")
            })
            
        }
    }
}

struct MixDescription: View {
    var body: some View {
        VStack(alignment:.leading) {
            VStack(alignment: .leading) {
                Text("Meow! Mix")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Apple Music for Luna")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Updated Caturday")
                    .font(Font.system(.body).smallCaps())
                
            }
            Text("Whether you're a kitten or an old-timer, get meowing with thiw purrsonalized mix of music to meow to!")
            Buttons()
        }
    }
}
