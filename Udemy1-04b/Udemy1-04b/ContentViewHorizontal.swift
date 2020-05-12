//
//  ContentViewHorizontal.swift
//  Udemy1-04b
//
//  Created by Mauro Ciargo on 4/20/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//
// esta pagina es una copia del contentviwe anterior clasico para poder hacer el horizontal scroll llamado carrusell


import SwiftUI

struct ContentViewHorizontal: View {
    var body: some View {
        VStack{
            VStack{
            Image("logo")
                 Text("Ing. Mauro Ciargo")
                         .font(.system(.largeTitle, design: .rounded))
                         .fontWeight(.bold)
                         .foregroundColor(.primary)
                     
                     Text("Universitario y profesor")
                         .fontWeight(.light)
                         .foregroundColor(.secondary)
                     Text("125.000 estudiantes - 59 Cursos - 23.500 reseñas")
                         .fontWeight(.light)
                         .foregroundColor(.black)
                        .font(.system(.caption, design: .rounded)).padding(.bottom)
                
                Text("Cursos Normales").font(.system(.title, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.gray)
                
                 }
             
            ScrollView (.horizontal, showsIndicators: false) {
                
                    
                HStack{
                    CardView(ImageName: "ui", AuthorName: "Juan Gabriel Gomila Salas", curseTitle: "Curso completo de iOS 13 con Swift UI 5.2: de cero a experto", originalPrice: "US$ 189,99", discountPrice: "US$ 18,99")
                        .frame(width: 300, height: 270)
                    
                    CardView(ImageName: "unity", AuthorName: "Juan Gabriel Gomila Salas", curseTitle: "Curso completo de videojuegos actuales con Unity", originalPrice: "Precio real:  US$ 289,99", discountPrice: "  US$ 12,99")
                        .frame(width: 300, height: 270)
                    
                    CardView(ImageName: "tenso", AuthorName: "Juan Gabriel Gomila Salas", curseTitle: "Tensorflow 2.0: Guía completa para el Nuevo", originalPrice: "  US$ 389,99", discountPrice: "  US$ 11,99")
                        .frame(width: 300, height: 270)
                    
                    CardView(ImageName: "deep", AuthorName: "Juan Gabriel Gomila Salas", curseTitle: "Deep Learning con Tensorflow para Machine Learning e IA", originalPrice: "  US$ 89,99", discountPrice: "  US$ 10,99")
                        .frame(width: 300, height: 270)
                }
                
                }
            Spacer()
            
            Text("Cursos Especiales").font(.system(.title, design: .rounded))
            .fontWeight(.bold)
            .foregroundColor(.gray)
            
            ScrollView (.horizontal, showsIndicators: false) {
            
                
            HStack{
                CardView(ImageName: "ui", AuthorName: "Juan Gabriel Gomila Salas", curseTitle: "Curso completo de iOS 13 con Swift UI 5.2: de cero a experto", originalPrice: "US$ 189,99", discountPrice: "US$ 18,99")
                    .frame(width: 300, height: 270)
                
                CardView(ImageName: "unity", AuthorName: "Juan Gabriel Gomila Salas", curseTitle: "Curso completo de videojuegos actuales con Unity", originalPrice: "Precio real:  US$ 289,99", discountPrice: "  US$ 12,99")
                    .frame(width: 300, height: 270)
                
                CardView(ImageName: "tenso", AuthorName: "Juan Gabriel Gomila Salas", curseTitle: "Tensorflow 2.0: Guía completa para el Nuevo", originalPrice: "  US$ 389,99", discountPrice: "  US$ 11,99")
                    .frame(width: 300, height: 270)
                
                CardView(ImageName: "deep", AuthorName: "Juan Gabriel Gomila Salas", curseTitle: "Deep Learning con Tensorflow para Machine Learning e IA", originalPrice: "  US$ 89,99", discountPrice: "  US$ 10,99")
                    .frame(width: 300, height: 270)
                    }
            
                }
            }
        }
    }

struct ContentViewHorizontal_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewHorizontal()
    }
}
