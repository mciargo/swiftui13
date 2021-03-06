//
//  SwiftUIView3.swift
//  Udemy1-05
//
//  Created by Mauro Ciargo on 4/21/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//


//https://iconos8.es/icons


import SwiftUI

struct SwiftUIView3: View {
    var body: some View {
                        
        VStack{

            Spacer()
            
            Button(action: {
                print("boton 2 hola pulsado")
            }) {
                HStack{
                    Image(systemName: "square.and.pencil")
                    Text("  Editar")
                }
            }
            .buttonStyle(BasicButtonStyle())
           
            Spacer()
            
            Button(action: {
                print("boton 2 hola pulsado")
            }) {
                HStack{
                    Image(systemName: "trash")
                    Text("  Eliminar")
                }
            }
            .buttonStyle(BasicButtonStyle())
           
            Spacer()
            
            Button(action: {
                print("boton 2 hola pulsado")
            }) {
                HStack{
                    Image(systemName: "square.and.arrow.up")
                    Text("  Compartir 2")
                }
            }
            .buttonStyle(BasicButtonStyle())
            
            Spacer()
            
            .buttonStyle(BasicButtonStyle())
            
             Spacer()
             
             Button(action: {
                 print("boton 2 hola pulsado")
             }) {
                 HStack{
                     Image(systemName: "person.badge.plus.fill")
                     Text("   Pasajeros")
                 }
             }
             .buttonStyle(BasicButtonStyle())
             Spacer()
        }
    }
}

struct SwiftUIView3_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView3()
    }
}


struct BasicButtonStyle: ButtonStyle{
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
        
            .frame(minWidth:0, maxWidth: 200)
            .padding(20)
            .background(LinearGradient(gradient:  Gradient(colors: [Color("DarkOcean1"), Color("DarkOcean2")]), startPoint: .leading, endPoint: .trailing))
            
            .foregroundColor(.white)
            .font(.title)
            .cornerRadius(30)
            .shadow(color: .blue, radius: 5, x: 20, y: 10)
            .padding(.horizontal, 15)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
            
    }
    
}
