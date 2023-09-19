//
//  DataViewHiragana.swift
//  Japres3
//
//  Created by Richard Budden on 8/9/2023.
//

import SwiftUI

struct DataHiraganaView: View {
    // load hiragana into struct from file "hiraganas.csv"
    // see DataFile for specific attribute names to reference
    var hiraganas = loadCSV(from: "hiraganas")
    var body: some View {
        List(hiraganas){
            hiragana in
            HStack
            {
                Image(hiragana.flashcardF)
                    .resizable().frame(width: 50, height: 50)
                Image(hiragana.flashcardB)
                    .resizable().frame(width: 50, height: 50)
                Text(hiragana.hiragana)
                VStack
                {
                    Text(hiragana.flashcardF)
                    Text(hiragana.flashcardB)
                }

            }
        }
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct DataViewHiragana_Previews: PreviewProvider {
    static var previews: some View {
        DataHiraganaView()
    }
}
