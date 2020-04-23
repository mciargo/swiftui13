//
//  Respuesta de la tarea 5b.swift
//  Tarea udemy1 - 5b
//
//  Created by Mauro Ciargo on 4/23/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//

import SwiftUI

struct Respuesta_de_la_tarea_5b: View {
    
    @State private var numClick = 0
    @State private var numClick1 = 0
    @State private var numClick2 = 0
    @State private var numClick3 = 0
    @State private var boton = 0
  
    
    var body: some View {
        
        VStack{
            
            Text(String(self.numClick))
                .fontWeight(.heavy)          .font(.system(size:40)).foregroundColor(.orange).font(.largeTitle)
            .multilineTextAlignment(.center)
                .shadow(color: .black, radius: 0.1, x: 2, y: 2).padding(.bottom, 77)
            
            CounterView(numClick: $numClick, numClick1: $numClick1, numClick2: $numClick2, numClick3: $numClick3, boton: $boton, buttonColor: .red)
            
            self.boton = 1
//
            CounterView(numClick: $numClick, numClick1: $numClick1, numClick2: $numClick2, numClick3: $numClick3, boton: $boton, buttonColor: .yellow)
            
           self.boton = 2
//
           CounterView(numClick: $numClick, numClick1: $numClick1, numClick2: $numClick2, numClick3: $numClick3, boton: $boton, buttonColor:.green)
            
            self.boton = 3
            
            
        }/*finde del primer Vstack*/
    }
}

struct Respuesta_de_la_tarea_5b_Previews: PreviewProvider {
    static var previews: some View {
        Respuesta_de_la_tarea_5b()
    }
}

struct CounterView: View {
    
    @Binding var numClick: Int
    @Binding var numClick1: Int
    @Binding var numClick2: Int
    @Binding var numClick3: Int
    @Binding var boton: Int

    var buttonColor: Color
    private var nuCli = 0
    
    var body: some View {
        
        Button(action: {
            
            switch self.boton {
            case 1: self.numClick1 += 1; nuCli = self.numClick1
            case 2: self.numClick2 += 1; nuCli = self.numClick3
            case 3: self.numClick3 += 1; nuCli = self.numClick3
                
            default:
                self.numClick += 1
            }
        }){
            
            Circle()
                .frame(width: 150, height: 150)
                .foregroundColor(buttonColor)
                
                .overlay(Text(String(nuCli))
                    
                    .font(.system(size:80, weight:.bold, design:.rounded)).foregroundColor(.white)
                    
            )
            
        }
                self.boton = 0
    }
    

}
