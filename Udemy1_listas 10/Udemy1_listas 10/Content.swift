//
//  ContentView.swift
//  Udemy1_listas 10
//
//  Created by Mauro Ciargo on 5/10/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    var salsas = [
        Salsa(name: "Salsa Pesto", image: "pesto"),
        Salsa(name: "Pesto Siciliano", image: "pesto-siciliano"),
        Salsa(name: "Salsa di Pomodoro", image: "pomodoro"),
        Salsa(name: "Salsa alla Rucola", image: "pesto-rucola"),
        Salsa(name: "Salsa ai Pistacchi", image: "pesto-pistacchi"),
        Salsa(name: "Salsa Melanzane", image: "pesto-melanzane"),
        Salsa(name: "Passata di Pomodoro", image: "passata"),
        Salsa(name: "Salsa alle Noci", image: "noci"),
    ]

    var body: some View {

        List (salsas){ salsa in
            
            FilaSalsa(salsa: salsa)
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Salsa: Identifiable {
    var id = UUID()
    /*para identificar cion un codigo unico para cada miembro de la lista*/
    var name: String
    var image: String
}

struct FilaSalsa: View {
    
    var salsa : Salsa
    var body: some View {
        
        HStack{
            
//            el overlay lo estoy poniendo yo para practicar sobre las sombras
            
            RoundedRectangle(cornerRadius: 30)
                                                .foregroundColor(.gray)
                .frame(width: 85, height: 85)
                                                .opacity(0.65)
                .overlay(Image(salsa.image)/* la variable salsa se pone en minuscula aunque fue declarada en mayuscula*/
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .clipped()
                .cornerRadius(30))
            
            

            
            Text(salsa.name) /* la variable salsa se pone en minuscula aunque fue declarada en mayuscula*/
        }
    }
}

