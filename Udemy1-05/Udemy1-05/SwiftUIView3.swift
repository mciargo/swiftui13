//
//  SwiftUIView3.swift
//  Udemy1-05
//
//  Created by Mauro Ciargo on 4/21/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//

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
                    Text("Editar")
                    
                }
                .frame(minWidth:0, maxWidth: 200)
                
                    .padding(20)
                    
                    .background(LinearGradient(gradient:  Gradient(colors: [Color("DarkOcean1"), Color("DarkOcean2")]), startPoint: .leading, endPoint: .trailing))
                    
                    .foregroundColor(.white)
                    .font(.title)
                    .cornerRadius(30)
                    .shadow(color: .blue, radius: 20, x: 20, y: 10)
                
            }
            Spacer()
            
            Button(action: {
                print("boton 2 hola pulsado")
            }) {
                HStack{
                    Image(systemName: "trash")
                    Text("Eliminar")
                    
                }
                .frame(minWidth:0, maxWidth: 200)
                
                    .padding(20)
                    
                    .background(LinearGradient(gradient:  Gradient(colors: [Color("DarkOcean1"), Color("DarkOcean2")]), startPoint: .leading, endPoint: .trailing))
                    
                    .foregroundColor(.white)
                    .font(.title)
                    .cornerRadius(30)
                    .shadow(color: .blue, radius: 20, x: 20, y: 10)
                
            }
            Spacer()
            
            Button(action: {
                print("boton 2 hola pulsado")
            }) {
                HStack{
                    Image(systemName: "square.and.arrow.up")
                    Text("Compartir")
                    
                }
                .frame(minWidth:0, maxWidth: 200)
                
                    .padding(20)
                    
                    .background(LinearGradient(gradient:  Gradient(colors: [Color("DarkOcean1"), Color("DarkOcean2")]), startPoint: .leading, endPoint: .trailing))
                    
                    .foregroundColor(.white)
                    .font(.title)
                    .cornerRadius(30)
                    .shadow(color: .blue, radius: 20, x: 20, y: 10)
                
            }
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
    typealias Body = <#type#>
    
    
    
}
