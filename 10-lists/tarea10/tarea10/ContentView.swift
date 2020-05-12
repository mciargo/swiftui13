//
//  ContentView.swift
//  tarea10
//
//  Created by Mauro Ciargo on 5/11/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var equipos = [
    
        Equipo(carro: "Alfa Romeo", imageCarro: "alfa-romeo", num: "7", piloto: "Raikonen", imagePiloto: "7_Raikonen"),
        Equipo(carro: "Alfa Romeo", imageCarro: "alfa-romeo", num: "99", piloto: "Giovinnazzi", imagePiloto: "99_giovinazzi"),
        Equipo(carro: "Alfa Thauri", imageCarro: "alpha-tauri", num: "26", piloto: "Kvyat", imagePiloto: "26_kvyat"),
        Equipo(carro: "Alfa Thauri", imageCarro: "alpha-tauri", num: "10", piloto: "Gasley", imagePiloto: "10_gasley"),
        Equipo(carro: "Ferrari", imageCarro: "ferrari", num: "16", piloto: "Vettel", imagePiloto: "5_vettel"),
        Equipo(carro: "Ferrari", imageCarro: "ferrari", num: "16", piloto: "Leclerc", imagePiloto: "16_leclerc"),
        Equipo(carro: "Haas", imageCarro: "haas", num: "8", piloto: "Grosjean", imagePiloto: "8_grosjean"),
        Equipo(carro: "Haas", imageCarro: "haas", num: "20", piloto: "Magnussen", imagePiloto: "20_magnussen"),
        Equipo(carro: "Maclaren", imageCarro: "maclaren", num: "55", piloto: "Sainz", imagePiloto: "55_sainz"),
        Equipo(carro: "Maclaren", imageCarro: "maclaren", num: "4", piloto: "Norris", imagePiloto: "4_norris"),
        Equipo(carro: "Mercedes", imageCarro: "mercedes", num: "44", piloto: "HAmilton", imagePiloto: "44_hamilton"),
        Equipo(carro: "Mercedes", imageCarro: "mercedes", num: "77", piloto: "Bottas", imagePiloto: "77_bottas"),
        Equipo(carro: "Racing Point", imageCarro: "racing-point", num: "11", piloto: "Perez", imagePiloto: "11_perez"),
        Equipo(carro: "Racing Point", imageCarro: "racing-point", num: "18", piloto: "Stroll", imagePiloto: "18_stroll"),
        Equipo(carro: "Renault", imageCarro: "renault", num: "3", piloto: "Ricciardo", imagePiloto: "3_riciardo"),
        Equipo(carro: "Renault", imageCarro: "renault", num: "31", piloto: "Ocon", imagePiloto: "31_ocon"),
        Equipo(carro: "Red Bull", imageCarro: "red-bull", num: "33", piloto: "Verstappen", imagePiloto: "33_verstappen"),
        Equipo(carro: "Red Bull", imageCarro: "red-bull", num: "23", piloto: "Albon", imagePiloto: "23_albon"),
        Equipo(carro: "Williams", imageCarro: "williams", num: "63", piloto: "Russel", imagePiloto: "63_rusell"),
        Equipo(carro: "Williams", imageCarro: "williams", num: "6", piloto: "Latif", imagePiloto: "6_latif")
    ]
    
    var body: some View {
        
        List (equipos){ equipo in
            HStack {
                VStack {
                        Text(equipo.carro)
                            .font(.headline)
                    Image(equipo.imageCarro)
                        .resizable()
                        .frame(width: 150, height: 50, alignment:.leading)
                        .aspectRatio(contentMode: .fill)
                        .clipped()
                        .cornerRadius(10)
                }
                Image(equipo.imagePiloto)
                    .resizable()
                    .frame(width: 50, height: 50, alignment:.leading)
                    .aspectRatio(contentMode: .fill)
                    .clipped()
                    .cornerRadius(20).padding(.top)
                Text(equipo.num).padding(.top)
                Text(equipo.piloto)
                    .fontWeight(.bold)
                    .font(.body).padding(.top)
                }
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Equipo: Identifiable {
    var id = UUID()
    var carro: String
    var imageCarro: String
    var num: String
    var piloto: String
    var imagePiloto: String

}
