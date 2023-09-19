//
//  Japres3App.swift
//  Japres3
//
//  Created by Liam Lee on 26/8/2023.
//
 
import SwiftUI

var hiraganas = loadCSV(from: "hiraganas")

@main
struct Japres3App: App {
    var body: some Scene {
        WindowGroup {
            MainMenuView()
        }
    }
}
