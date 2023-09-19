//
//  TopNavView.swift
//  Japres3
//
//  Created by Richard Budden on 4/9/2023.
//
 
import SwiftUI
 
struct TopNavView: View {
    var body: some View {
        NavigationStack{
            ZStack(){
                
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading){
                    Image(systemName: "arrow.backward")
                }
            }
        }
    }
}

struct TopNavView_Previews: PreviewProvider {
    static var previews: some View {
        TopNavView()
    }
}
