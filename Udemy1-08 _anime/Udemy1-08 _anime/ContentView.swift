//
//  ContentView.swift
//  Udemy1-08 _anime
//
//  Created by Mauro Ciargo on 4/25/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//

// animaciones implicitas con un boton que cuando se toque el teclado el color va a cambiar.... y viceversa
//camnio el color del circulo
//cambnio del teclado
//cambio del tamaño del teclado

import SwiftUI

struct ContentView: View {
    
    @State private var buttonColorChanged = false
    @State private var iconColorChanged = false
    @State private var iconSizeChanged = false
    
    var body: some View {
        
        ZStack{
            Circle()
            .frame(width: 180, height: 180)
                .foregroundColor(buttonColorChanged ? Color(.systemGray4) : .green)
                
            
            Image(systemName: "keyboard")
                .font(.system(size: 90, weight: .bold, design: .rounded))
                .foregroundColor(iconColorChanged ? .green :  Color(.systemGray6))
                .scaleEffect(iconSizeChanged ? 1.0 : 0.5)
        }
//        esto es implicita .animation(.spring(response: 2.5, dampingFraction: 0.1, blendDuration: 0.5))
            
            
        .onTapGesture {
            
            withAnimation(.spring(response: 1.5, dampingFraction: 0.1, blendDuration: 0.5)){
                
                self.buttonColorChanged.toggle()
            self.iconSizeChanged.toggle()
            }
            self.iconColorChanged.toggle()
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
