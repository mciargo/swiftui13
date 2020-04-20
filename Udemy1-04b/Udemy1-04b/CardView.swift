//
//  CardView.swift
//  Udemy1-04b
//
//  Created by Mauro Ciargo on 4/19/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//

import SwiftUI

struct CardView: View {
    
    var ImageName: String
    var AuthorName: String
    var curseTitle: String
    var originalPrice: String
    var discountPrice: String
    
    var body: some View {
        
        VStack {
            Image(ImageName)
            .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.all)
            
            VStack (alignment: .leading){
                Text(curseTitle)
                    .font(.system(.title, design: .rounded))
                    .foregroundColor(.primary) /*el primary o secondary color se define en la carpeta infi.plist*/
                    .lineLimit(2)
                Text(AuthorName)
                    .font(.custom("Avenir", size: 22))
                    .fontWeight(.bold)
                    .foregroundColor(.secondary)/*el secondary color se define en la carpeta infi.plist*/
                    
                HStack {
                    Text(discountPrice).foregroundColor(.primary)
                        .font(.subheadline)
                    
                    Text(originalPrice)
                        .font(.callout)
                        .foregroundColor(.secondary)
                        .strikethrough()
                }
                
            }.padding(.leading)
        }.cornerRadius(12).overlay(RoundedRectangle(cornerRadius: 12).stroke(Color(red: 23/255, green: 23/255, blue: 230/255, opacity: 0.5), lineWidth: 2)) /*stroke solo pinta bordes del rectangulo*/
            .padding(.horizontal)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(ImageName: "ui", AuthorName: "Juan Gabriel Gomila Salas", curseTitle: "Curso completo de iOS 13 con Swift UI 5.2: de cero a experto", originalPrice: "Precio real:  189,99 US$", discountPrice: "Precio actual:  18,99 US$")
    }
}



//Juan Gabriel Gomila Salas
//Calificación: 4,9 de 5
//4,9
//22 reseñas
//(22)
//Precio actual18,99 US$
//Precio original199,99 US$
//Destacado y nuevo
