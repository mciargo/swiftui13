//
//  ContentView.swift
//  udemy1-02
//
//  Created by Mauro Ciargo on 4/18/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//

// imagenes gratis

// unsplash.com
//pixabay.com


// https://developer.apple.com/design/human-interface-guidelines/sf-symbols/overview/


import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Image("newyork")
            .resizable()
    //            .edgesIgnoringSafeArea(.all)
            
    // -scaletoFit mantiene la relación de aspecto pero no llena la pantalla
            .frame(width: 200, height: 200)
    //            con frame le pogo dimesiones en pixel
                .clipped()
            
            //        con clipped lo recorto
            Spacer()
            Image("newyork")
                    .resizable()
                    .frame(width: 300, height: 200)
                .clipShape(Capsule())
// para que capsule funcione la imagen debe ser rectangular
            
             Spacer()
            
            Image("newyork")
                .resizable()
                .frame(width: 200, height: 100)
            .clipShape(Capsule())
                .opacity(0.5)
            
//          opacidad   entre 0 y 1
//            overlay = capa encima de la imagen
                
                .overlay(
/*                    Image(systemName: "heart.fill")).font(.system(size:44)).foregroundColor(.red).opacity(0.7)*/
            Text("Que buena vista de NUeva York")
                .fontWeight(.bold)
                .foregroundColor(.black))
                .padding()
                .background(Color.gray)
                .cornerRadius(40)
                .padding()
//           alignment: .bottom
            
            
            
            Spacer()
            
            
            
//            si ponemos un overlay un rectangulo y lo ponemos a opacidad 0.5 de tal manera oscurecer la foto
        }

        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
