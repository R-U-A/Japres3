//
//  MainMenuView2.swift
//  Japres3
//
//  Created by Richard Budden on 4/9/2023.
//

import SwiftUI

struct MainMenuView: View {
    var body: some View {
        NavigationView
        {
            GeometryReader{ geo in
                    ZStack(){
                        Image("mainMenuBG")
                            .resizable()
                            .scaledToFill()
                            .edgesIgnoringSafeArea(.all)
                            .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                        VStack(alignment: .center, spacing: 30.0
                        ){
                            Image("japresLogo")
                                .resizable()
                                .renderingMode(.original)
                                .aspectRatio(contentMode: .fit)
                            
                            Text("Hiragana Fun")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                            
                            NavigationLink(destination: CharacterSelectionView(gameChoice: 0))
                            {
                                Text("FLASHCARDS")
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
                            NavigationLink(destination: GamesView())
                            {
                                Text("GAMES")
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
                            
                            NavigationLink(destination: HighscoresView())
                            {
                                Text("HIGHSCORES")
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
                            
                            NavigationLink(destination: InformationView())
                            { 
                                Text("INFORMATION")
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
                        }
                        .padding(.horizontal, 50.0)
                            //.fixedSize(horizontal: true, vertical:false)
                        }
                    }
                }.navigationViewStyle(StackNavigationViewStyle())

    }
}

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}
