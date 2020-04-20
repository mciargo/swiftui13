//
//  ContentView.swift
//  Udemy1-04b
//
//  Created by Mauro Ciargo on 4/19/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
        Image("logo")
        
    ScrollView {
        VStack{
           
                Text("Juan Gabriel Gomila")
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    
                    Text("Universitario y profesor")
                        .fontWeight(.light)
                        .foregroundColor(.secondary)
                    Text("125.000 estudiantes - 59 Cursos - 23.500 reseñas")
                        .fontWeight(.light)
                        .foregroundColor(.black)
                        .font(.system(.caption, design: .rounded))
                }.padding(.bottom)
            
            CardView(ImageName: "ui", AuthorName: "Juan Gabriel Gomila Salas", curseTitle: "Curso completo de iOS 13 con Swift UI 5.2: de cero a experto", originalPrice: "US$ 189,99", discountPrice: "US$ 18,99")
            
            CardView(ImageName: "unity", AuthorName: "Juan Gabriel Gomila Salas", curseTitle: "Curso completo de videojuegos actuales con Unity", originalPrice: "Precio real:  US$ 289,99", discountPrice: "  US$ 12,99")
            
            CardView(ImageName: "tenso", AuthorName: "Juan Gabriel Gomila Salas", curseTitle: "Tensorflow 2.0: Guía completa para el Nuevo", originalPrice: "  US$ 389,99", discountPrice: "  US$ 11,99")
            
            CardView(ImageName: "deep", AuthorName: "Juan Gabriel Gomila Salas", curseTitle: "Deep Learning con Tensorflow para Machine Learning e IA", originalPrice: "  US$ 89,99", discountPrice: "  US$ 10,99")
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
