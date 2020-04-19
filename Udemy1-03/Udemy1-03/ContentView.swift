//
//  ContentView.swift
//  Udemy1-03
//
//  Created by Mauro Ciargo on 4/19/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
//            si hago CMD click sobre las lineas resaltadas y apunto a la función inicial de ese realto, y le doy a EXTRACT SUBVIEW me lo coloca todo abajo y le doy un nombre a la nueva función. En este caso lo llame HeaderView()
            
             Spacer()
            HeaderView()
            Spacer()
            CuadrosPrecio()
             Spacer()
            
//            lo mejor para entender el codigo es reducir por cuadros....
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            //            para ainea el stack hay que hacerlo a la entrada antes del corchete
            //            spaceing es el espacio entre lineas
            
            Text("Elige tu itinerario de enseñanza")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
           
            
            Text("para poder avanzar")
                .fontWeight(.bold)
                .multilineTextAlignment(.trailing)
            
        }
    }
}

struct CuadrosPrecio: View {
    var body: some View {
        
        HStack{
            PriceView(title: "Básico", subtitle: "Curso Incluido", price: "9.99", backgroundColor: .green, textColor: .white, priceColor: .yellow)
            
            ZStack{
            
            PriceView(title: "Carrera", subtitle: "Curso Incluido", price: "49.99", backgroundColor: (Color(red:122/255, green:20/255, blue:255/255)), textColor: .white, priceColor: .orange)
            
                Text("the best").font(.system(.body, design: .rounded))
                                    .fontWeight(.bold)
                                    .foregroundColor(.yellow)
                                    .padding(8)
                                    .background(Color.gray)
                    .offset(x:0, y:70)
        }
            
            //                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
            //            esto es cuando se quiere definir unos cuadros fijos para ambos
            
            //            para crear un cuadrado se coloca todo al final del stack asi abarca todo
            
//            VStack{
//                Text("Carrera")
//                    .font(.system(.title, design: .rounded))
//                    .fontWeight(.bold)
//                    .foregroundColor(.white)
//
//                Text("49.99 €")
//                    .font(.system(size: 30, design: .rounded))
//                    .fontWeight(.bold)
//                    .foregroundColor(.yellow)
//
//                Text("Curso Incluido")
//                    .font(.headline)
//                    .foregroundColor(.white)
//
//            }.padding(25)
//                .background(Color(red:122/255, green:20/255, blue:255/255))
//                .cornerRadius(10)
//
//  como era antes de hacerlo por variable
//            VStack{
//                           Text("Basico")
//                               .font(.system(.title, design: .rounded))
//                               .fontWeight(.bold)
//                               .foregroundColor(.white)
//
//                           Text("9.99 €")
//                               .font(.system(size: 30, design: .rounded))
//                               .fontWeight(.bold)
//                               .foregroundColor(.yellow)
//
//                           Text("Curso Incluido")
//                               .font(.headline)
//                               .foregroundColor(.white)
//
//                       }.padding(25)
//                           .background(Color.green)
//                           .cornerRadius(10)
            
            
            
            
        }
    }
}

struct PriceView: View {
    
    var title: String
    var subtitle: String
    var price: String
    var backgroundColor: Color
    var textColor: Color
    var priceColor: Color
    
    
    var body: some View {
        VStack{
            Text(title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(textColor)
            
            Text(price)
                .font(.system(size: 30, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(priceColor)
            
            Text(subtitle)
                .font(.headline)
                .foregroundColor(textColor)
            
        }.padding(25)
            .background(backgroundColor)
            .cornerRadius(10)
    }
}
