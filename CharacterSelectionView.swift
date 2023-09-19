//
//  CharacterSelectionView2.swift
//  Japres3
//
//  Created by Richard Budden on 4/9/2023.
//

import SwiftUI

struct CharacterSelectionView: View {
    
    // change these to environment objects
    @State private var a_koSelected = false
    @State private var sa_toSelected = false
    @State private var na_hoSelected = false
    @State private var ma_nSelected = false
    @State private var maru_tentenSelected = false
    @State private var combinationSelected = false
            
    @State private var isNavigationActive = false
    @State private var returnValue: [Int] = []
    
    @State var gameChoice: Int

    // add observableObjects game flags and selection flags
        
    var body: some View {
        GeometryReader{ geo in
            ZStack(){
                Image("characterSelectionBG")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .frame(width: geo.size.width, height: geo.size.height, alignment: .topLeading)
                    .brightness(-0.2)
                VStack(alignment: .center, spacing: 10.0)
                {
                    
                    Text("Choose the hiragana groups\n that you want to study with")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    
                    ZStack {
                        CustomButton(buttonText: "あ - こ")
                            .background(Color.red.opacity(0.8))
                            .cornerRadius(20)
                        Toggle("", isOn: $a_koSelected).tint(Color.secondary).padding()
                    }
                    
                    ZStack {
                        CustomButton(buttonText: "さ - と")
                            .background(Color.orange.opacity(0.8))
                        .cornerRadius(20)
                        Toggle("", isOn: $sa_toSelected).tint(Color.secondary).padding()
                    }

                    ZStack {
                        CustomButton(buttonText: "な - ほ")
                            .background(Color.yellow.opacity(0.8))
                        .cornerRadius(20)
                        Toggle("", isOn: $na_hoSelected).tint(Color.secondary).padding()
                    }
                    

                    ZStack {
                        CustomButton(buttonText: "ま - ん")
                            .background(Color.green.opacity(0.8))
                        .cornerRadius(20)
                        Toggle("", isOn: $ma_nSelected).tint(Color.secondary).padding()
                    }

                    ZStack {
                        CustomButton(buttonText: "maru (˚) &\ntenten (“) ")
                            .background(Color.teal.opacity(0.8))
                        .cornerRadius(20)
                        Toggle("", isOn: $maru_tentenSelected).tint(Color.secondary).padding()
                    }

                    ZStack {
                        CustomButton(buttonText: "Combination\nCharacters\nゃ, ゅ, ょ")
                            .background(Color.indigo.opacity(0.8))
                        .cornerRadius(20)
                        Toggle("", isOn: $combinationSelected).tint(Color.secondary).padding()
                    }
                    
                    HStack
                    {
                        Spacer()
                        Button(action:{
                            returnValue = someFunction([a_koSelected, sa_toSelected, na_hoSelected, ma_nSelected, maru_tentenSelected, combinationSelected]);
                            isNavigationActive = true;
                            })
                        {
                            Image(systemName: "arrowshape.forward.fill")
                                    .renderingMode(.original)
                                    .resizable()
                                .foregroundColor(Color.white)
                                .opacity(0.5)
                            
                        }.overlay(
                            Text("Confirm")
                                .font(.body)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                        )
                        
                        .labelStyle(IconOnlyLabelStyle())
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .frame(width: 125, height: 100, alignment: .trailing)
                        
                        NavigationLink("", isActive: $isNavigationActive){
                            GameChoiceView(returnValue: $returnValue, gameChoice: $gameChoice)
                        }
                    }

                }
                .padding(.horizontal, 50.0)
                //.fixedSize(horizontal: true, vertical:false)
                
            }
        }
                    
    }
    
}

func someFunction(_ selection: [Bool])-> [Int]{
    var hiraIndex : [Int] = []
    var ind = 0
    let _ = print(selection)
    while (ind < hiraganas.count)
    {
        if hiraganas[ind].section == "a - ko" && selection[0] == true
            || hiraganas[ind].section == "sa - to" && selection[1] == true
            || hiraganas[ind].section == "na - ho" && selection[2] == true
            || hiraganas[ind].section == "ma - n" && selection[3] == true
            || hiraganas[ind].section == "tenten & maru" && selection[4] == true
            || hiraganas[ind].section == "combination characters" && selection[5] == true
        {
            hiraIndex.append(ind)
        }
        
        ind += 1
    }
    return hiraIndex
    
}

struct CharacterSelectionView2_Previews: PreviewProvider {
    static var previews: some View {
        CharacterSelectionView(gameChoice: 0)
    }
}
