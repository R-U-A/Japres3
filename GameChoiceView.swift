//
//  GameTwoView.swift
//  Japres3
//
//  Created by Richard Budden on 9/9/2023.
//

import SwiftUI


struct GameChoiceView: View {
    @Binding var returnValue: [Int]
    @Binding var gameChoice: Int
        
    var body: some View {
        VStack
        {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            let _ = print(returnValue)
            let _ = print(gameChoice)
            
            Image(hiraganas[0].flashcardF).resizable()
                .frame(width: 50, height: 50)
        }
        
        
    }
}

struct GameTwoView_Previews: PreviewProvider {
    static var previews: some View {
        GameChoiceView(returnValue: .constant([1,2,3,4,5,6]), gameChoice: .constant(0))
    }
}
