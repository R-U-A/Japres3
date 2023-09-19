//
//  InformationView.swift
//  Japres3
//
//  Created by Richard Budden on 4/9/2023.
//

import SwiftUI

struct InformationView: View {
    var body: some View {
        GeometryReader{ geo in
            ScrollView
            {
                ZStack(){
                    Image("informationPageBG")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
                        .frame(width: geo.size.width, height: geo.size.height, alignment: .topLeading)
                        .brightness(0)
                    VStack(spacing: 10){
                        Text("About Japres")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.white)
                        Text("Welcome to the Japres Hiragana Fun App! This app has been created to bring a little enjoyment to learning Japanese. The ‘Study’ section contains hiragana flashcards (basic characters; tenten and maru, and combination characters) grouped into smaller categories. Learn the Hiragana characters and practise your knowledge in a fun way by playing the games.  The games increase in difficulty to encourage you to master hiragana and learn the Japanese vocabulary listed on the bottom of each flashcard. The games have been designed to allow you to play as soon as you have learned one group of characters.  You can select the group(s) of characters you have learned at the start of each game and only the hiragana characters related to those groups will appear in the games.  We hope by studying the flashcards and playing the games you will learn Japanese hiragana characters and vocabulary easily and have fun while learning.\n\nThank you to my friend, Atsuya for recording the authentic Japanese pronunciation audio files used throughout this app.\n\nFor more information, fun ideas and free resources, please visit www.japres.com.au")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .padding()
                    }            .background(Color.black                    .opacity(0.7))

                }
            }
        }.ignoresSafeArea()
    }
}

struct InformationView_Previews: PreviewProvider {
    static var previews: some View {
        InformationView()
    }
}
