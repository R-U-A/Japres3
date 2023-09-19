//
//  ContentView.swift
//  Japres3
//
//  Created by Liam Lee on 26/8/2023.
//

import SwiftUI
import UIKit

struct ContentView: View {
    
    @State var romaji_one = "a"
    @State var romaji_two = "i"
    @State var romaji_three = "u"
    @State var romaji_four = "e"
    @State var romaji_five = "o"
    @State var hiragana = "a"
    
    @State var strikes = 3
    @State var score = 0
    
    @State var heart1 = "red"
    @State var heart2 = "red"
    @State var heart3 = "red"
    

    var body: some View {
        
        VStack{
            
            HStack{
                Image(systemName: "pause")
                Image(systemName: "info.circle")
                Spacer()
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                Text("\(score)")
            }
            .frame(width: UIScreen.main.bounds.width, height:
                    UIScreen.main.bounds.height*0.05)
            .background(Color.gray.opacity(0.6))
                
            HStack{
                Image(systemName: "heart.fill")
                    .foregroundColor(Color(colorName: heart1))
                Image(systemName: "heart.fill")
                    .foregroundColor(Color(colorName: heart2))
                Image(systemName: "heart.fill")
                    .foregroundColor(Color(colorName: heart3))
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height*0.05)
            .background(.clear)
                
            VStack{
                HStack{
                    RomajiButton(
                        char: "i",
                        image: Image("red-circle")
                    ) {
                        is_match(romaji: romaji_one)
                    }
                    
                    RomajiButton(
                        char: "i",
                        image: Image("red-circle")
                    ) {
                        is_match(romaji: romaji_two)
                    }
                }
                
                HStack{
                    RomajiButton(
                        char: "e",
                        image: Image("red-circle")
                    ) {
                        is_match(romaji: romaji_three)
                    }
                    
                    RomajiButton(
                        char: "u",
                        image: Image("red-circle")
                    ) {
                        is_match(romaji: romaji_four)
                    }
                    
                    RomajiButton(
                        char: "o",
                        image: Image("red-circle")
                    ) {
                        is_match(romaji: romaji_five)
                    }
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height*0.30)
            Spacer()
            Text("あ")
            Text("\(strikes)")
        }
        .background(.blue)
        
    }
    
    func is_match(romaji: String) -> Void{
        if hiragana == romaji{
            score+=1
        } else {
            strikes-=1
            if strikes==2{
                heart3 = "gray"
            } else if strikes == 1{
                heart2 = "gray"
            } else if strikes <= 0{
                heart1 = "gray"
                //Do end game stuff here
            }
        } 
        return
    }
     
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



struct RomajiButton: View {

    var char: String
    var image: Image
    var clicked: () -> Void

    
    var body: some View {
        Button(action: clicked) {
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay(Text(char), alignment: .center)
        }
        .contentShape(Circle())
        .clipShape(Circle())
    }

 }

extension Color {
    init?(colorName: String) {
        switch colorName{
        case "red": self = .red
        case "gray": self = .gray
        default: return nil
        }
    }
}
