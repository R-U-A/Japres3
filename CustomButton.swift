//
//  CustomButton.swift
//  Japres3
//
//  Created by Richard Budden on 4/9/2023.
// 
 
import SwiftUI

struct CustomButton: View {
    
    var buttonText: String
    
    var body: some View {
        Button {
            
        } label: {
            Text(buttonText)
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding()
                .foregroundColor(Color.white)
                .shadow(radius: 10)
                .frame(maxWidth: .infinity)
                
            
        }
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(buttonText: "")
    }
}
