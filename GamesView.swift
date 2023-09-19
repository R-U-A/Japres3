//
//  GamesView.swift
//  Japres3
//
//  Created by Richard Budden on 4/9/2023.
//
 
import SwiftUI
 
struct GamesView: View {
    // needs to give character selection game choice
    var body: some View {
        GeometryReader{ geo in
            ZStack(){
                Image("gamesPageBG")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .frame(width: geo.size.width, height: geo.size.height)
                    .brightness(-0.1)
                    
                VStack(alignment: .center, spacing: 10.0)
                {
                    Text("Games")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .padding()
                        
                    NavigationLink(destination: CharacterSelectionView(gameChoice: 1))
                    {
                        Text("Game 1\nBalloon Fun")
                            .font(.title)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding()
                            .foregroundColor(Color.white)
                            .shadow(radius: 10)
                            .frame(maxWidth: .infinity)
                            .background(Color.red)
                            .cornerRadius(10)
                    }
                    NavigationLink(destination: CharacterSelectionView(gameChoice: 2))
                    {
                        Text("Game 2\nSpaceship")
                            .font(.title)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding()
                            .foregroundColor(Color.white)
                            .shadow(radius: 10)
                            .frame(maxWidth: .infinity)
                            .background(Color.orange)
                            .cornerRadius(10)
                    }
                    
                    NavigationLink(destination: CharacterSelectionView(gameChoice:3))
                    {
                        Text("Game 3\nStarfall")
                            .font(.title)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding()
                            .foregroundColor(Color.white)
                            .shadow(radius: 10)
                            .frame(maxWidth: .infinity)
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                    
                    NavigationLink(destination: CharacterSelectionView(gameChoice:4))
                    {
                        Text("Game 4\nCard Match")
                            .font(.title)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding()
                            .foregroundColor(Color.white)
                            .shadow(radius: 10)
                            .frame(maxWidth: .infinity)
                            .background(Color.green)
                            .cornerRadius(10)
                    }
                    NavigationLink(destination: CharacterSelectionView(gameChoice:5))
                    {
                        Text("Game 5\nVocab")
                            .font(.title)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding()
                            .foregroundColor(Color.white)
                            .shadow(radius: 10)
                            .frame(maxWidth: .infinity)
                            .background(Color.teal)
                            .cornerRadius(10)
                    }

                }
                .padding(.horizontal, 50.0)
                //.fixedSize(horizontal: true, vertical:false)
                
            }
        }
    }
}

struct GamesView_Previews: PreviewProvider {
    static var previews: some View {
        GamesView()
    }
}
