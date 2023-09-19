//
//  HighscoresView.swift
//  Japres3
//
//  Created by Richard Budden on 4/9/2023.
//
  
import SwiftUI

struct HighscoresView: View {
    var body: some View {
        GeometryReader{ geo in
            ZStack(){
                Image("highscoresPageBG")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .frame(width: geo.size.width, height: geo.size.height, alignment: .topLeading)
                VStack(alignment: .center, spacing: 40.0)
                {
                    Text("HIGHSCORES")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    HStack()
                    {
                        Spacer()
                        Text("GAME CATEGORY")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        Spacer()
                        Image(systemName: "star.fill").renderingMode(.original)
                            
                        Spacer()
                    }
                    // list view of highscores
                }
                .background(Color.black.opacity(0.3))
                
            }
        }
    }
}

struct HighscoresView_Previews: PreviewProvider {
    static var previews: some View {
        HighscoresView()
    }
}
