//
//  DataFile.swift
//  Japres3
//
//  Created by Richard Budden on 8/9/2023.
//

import Foundation

// Hiragana,Romaji,Section,Audio.mp3, Flashcard

struct Hiragana: Identifiable
{
    var hiragana: String = ""
    var romaji: String = ""
    var section: String = ""
    var audio: String = ""
    var flashcardF: String = ""
    var flashcardB: String = ""

    var id  = UUID()
    
    init(raw: [String]){
        hiragana = raw[0]
        romaji = raw[1]
        section = raw[2]
        audio = raw[3]
        flashcardF = raw[4]
        flashcardB = raw[5]

    }
}

func loadCSV(from csvName: String) -> [Hiragana]{
    var csvToStruct = [Hiragana]()
    
    // locate csv
    guard let filepath = Bundle.main.path(forResource: csvName, ofType: "csv") else {
        return []
    }
    
    // convert contents into string string

    var data = ""
    do{
        data = try String(contentsOfFile: filepath)
    }
    catch{
        print(error)
        return[]
    }
    
    // split rows into a string array
    var rows = data.components(separatedBy: "\n")
    
    //remove column title row
    let columnCount = rows.first?.components(separatedBy: ",").count
    rows.removeFirst()
    for row in rows{
        let trimmedRow = row.trimmingCharacters(in: .whitespacesAndNewlines)
        let csvColumns = trimmedRow.components(separatedBy: ",")
        if csvColumns.count == columnCount{
                let hiraganaStruct = Hiragana.init(raw: csvColumns)
                csvToStruct.append(hiraganaStruct)
            }
    }
    
    return csvToStruct
}
