//
//  Cambiogeometrico.swift
//  Udemy1-08 _anime
//
//  Created by Mauro Ciargo on 4/25/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//

import SwiftUI

struct Cambiogeometrico: View {
    
    @State private var animeBegin = false
    @State private var circle = false
    
    var body: some View {
        
        ZStack{
            RoundedRectangle(cornerRadius:animeBegin ? 30 : 10)
                .frame(width: animeBegin ? 60 : 250, height: 60)
            
            foregroundColor(animeBegin ? .blue : .green)
            overlay(
                Image(systemName: "keyboard")
                .font(.system(.largeTitle))
                .foregroundColor(.white)
                .scaleEffect(circle ? 0.5 : 1.0)
                )
        }.onTapGesture {
            withAnimation(Animation.spring()){
                
                self.animeBegin.toggle()
            }
            withAnimation(Animation.spring()){
            
            self.circle.toggle()
        }
        }
    }


struct Cambiogeometrico_Previews: PreviewProvider {
    static var previews: some View {
        Cambiogeometrico()
    }
}
}
