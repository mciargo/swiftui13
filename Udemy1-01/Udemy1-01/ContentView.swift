//
//  ContentView.swift
//  Udemy1-01
//
//  Created by Mauro Ciargo on 4/18/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//
// para bajar fuentes ir a dafont.com

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
             Spacer()
            Text("Buongiorno Mondo")
                .fontWeight(.heavy)
                .foregroundColor(.blue)
                .font(.title)
            Spacer()
            Text("erase una vez un texto que cmabiaba muy a menudo por lo tatno se deberia hacer algo parecido para poder estudiar")
                .fontWeight(.bold)
            .foregroundColor(.green)
            .font(.custom("Avenir", size: 33))
                .rotation3DEffect(.degrees(45), axis: (x: 1, y: 0, z: 0))
                
//                el 3D me define donde coloco el pivot. En este caso ,o coloc en el eje ce las X por lo que parece que el texto se cae hacia atras. Si fuera en el eje Y seria como abrir una puerta
                
                .shadow(color: .gray, radius: 2, x: -3, y: 15)
            
//            arriba la x y y son para definir el angulo en que se proyectará la sombra
             
            
            Spacer()
            Text("Las fuentes presentadas en este sitio web son propiedad de sus autores, y son freeware, shareware, demos o dominio público. La licencia mencionada encima del botón de descarga es sólo una indicación. Por favor, mira en los ficheros  en los zip o comprueba lo que se indica en la web del autor para los detalles.")
            .fontWeight(.regular)
            .foregroundColor(.gray)
                .font(.custom("Avenir", size: 18))
                .padding(20)
                .multilineTextAlignment(.leading)
                .rotationEffect(.degrees(12), anchor: UnitPoint(x: 0, y: 0))
            
//            el ancho es saber donde se fija el pivot. En este caso se coloca en las ejes 0,0 que seria arriba a la derecha
            
            
             Spacer()
            
            Text("Las fuentes presentadas en este sitio web son propiedad de sus autores, y son freeware, shareware, demos o dominio público.")
            .fontWeight(.regular)
            .foregroundColor(.gray)
                .font(.custom("Avenir", size: 18))
                .padding(20)
                .multilineTextAlignment(.leading).rotationEffect(.degrees(-45))
                
             Spacer()
            Text("Las fuentes presentadas en este sitio web son propiedad de sus autores, y son freeware, shareware, demos o dominio público. La licencia mencionada encima del botón de descarga es sólo una indicación. Por favor, mira en los ficheros  en los zip o comprueba lo que se indica en la web del autor para los detalles, y contacta con ")
                .fontWeight(.regular)
            .foregroundColor(.gray)
                .font(.custom("Avenir", size: 18))
                .padding()
            .lineLimit(3)
            .lineSpacing(15)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
