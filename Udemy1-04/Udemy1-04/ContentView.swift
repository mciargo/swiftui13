//
//  ContentView.swift
//  Udemy1-04
//
//  Created by Mauro Ciargo on 4/19/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        VStack(alignment: .leading, spacing: 5){
                   
                   Text("LISTA DE CURSOS")
                 
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.black).multilineTextAlignment(.center)
                    .padding(.leading)
                        
                   
                   Text("PRUEBA PROPIA DE SCROLLING")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    .padding()
                        
               
        Image("FOTO1")
//            .resizable().scaledToFit
//            .padding(.all)
            
            tarjetas(descripcion: "Desarrollo de juegos con Unreal Engine 4 de 0 a profesional ", profesor: "Juan Gabriel Gomila Sala, Carlos Coronado", valor: "4,7", visita: "(171)", precio: "€ 10,99")
            
            Image("foto")
            .resizable().scaledToFit()
            .padding(.all)
            
            tarjetas(descripcion: "Curso completo de inteligencia artificial con Phyton", profesor: "Juan Gabriel Gomila Sala", valor: "4,4", visita: "(1.066)", precio: "€ 10,99")

//            var foto: Image
//            var descripcion: String
//            var profesor: String
//            var valor: String
//            var visita: String
//            var precio: String
            
//            PriceView(title: "Básico", subtitle: "Curso Incluido", price: "9.99", backgroundColor: .green, textColor: .white, priceColor: .yellow)
//
            
            
            
            VStack{
                            Image("FOTO7")
                                .resizable().frame(.w)
                                .padding(.all)
                            
            //                scaletoFit mantiene la relación de aspecto pero no llena la pantalla
                            
                            Text("Desarrollo de juegos con Unreal Engine 4 de 0 a profesional").fontWeight(.bold).padding()
                            
                            Text("Juan Gabriel Gomila Sala, Carlos Coronado")
                            
                            HStack{
                                
                                Text("4,7").fontWeight(.bold)
                        
                                 Image(systemName:"star")
                                               .font(.system(size:18))
                                               .foregroundColor(.yellow)
                                Text("(171)")
                                
                            }
                            Text(" € 10,99").font(.custom("Avenir", size: 18))
                                .fontWeight(.black)
                               
                            
                        } /*fin de VStack de la linea 31*/
            
        }
        
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct tarjetas: View {
    
    var descripcion: String
    var profesor: String
    var valor: String
    var visita: String
    var precio: String
    
    
    var body: some View {
        VStack{
            
            
            //                scaletoFit mantiene la relación de aspecto pero no llena la pantalla
//            .frame(width: 340, height: 180)
            
            Text(descripcion).fontWeight(.bold).padding()
            
            Text(profesor)
            
            HStack{
                
                Text(valor).fontWeight(.bold)
                
                Image(systemName:"star")
                    .font(.system(size:18))
                    .foregroundColor(.yellow)
                Text(visita)
                
            }
            Text(precio).font(.custom("Avenir", size: 18))
                .fontWeight(.black)
            
            
        }
    }
}
