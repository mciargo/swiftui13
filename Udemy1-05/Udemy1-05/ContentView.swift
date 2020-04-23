//
//  ContentView.swift
//  Udemy1-05
//
//  Created by Mauro Ciargo on 4/20/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//

import SwiftUI




struct ContentView: View {
    
    private var isPlaying = false
    
    var body: some View {
            
        Button(action: {
            print("boton pulsado")
            
        }){
            Image(systemName:isPlaying ? "stop.circle.fill" :  "play.circle.fill")
        
        .font(.system(size:100))
                .foregroundColor(isPlaying ? .red : .blue)
  
        }
    }
            
}
        
        
        



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
