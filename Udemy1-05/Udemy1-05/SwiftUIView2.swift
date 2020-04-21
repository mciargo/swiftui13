//
//  SwiftUIView2.swift
//  Udemy1-05
//
//  Created by Mauro Ciargo on 4/21/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//

import SwiftUI

struct SwiftUIView2: View {
    var body: some View {
        
               
                
                VStack{
 
                    Spacer()
                    
        //    limite del boton ---------------------------------------
                    
                    Button(action: {
                                        print("boton 2 hola pulsado")
                                    }) {
                                        Text("hola mundo 2")
                                            .foregroundColor(.white)
                                            .font(.title)
                                            .padding()
                                            .background(Color.green)
                                            .cornerRadius(5)
                                            .padding(10) /*Le pongo otro limite y lo separa 10 p del background*/
                                            .border(Color.blue, width: 6)
                                            .cornerRadius(10)

                                    }
        //    limite del boton ---------------------------------------
  
                                
                                            Spacer()
                    Button(action: {
                        print("boton 2 hola pulsado")
                    }) {
                        HStack{
                            Image(systemName: "trash")
                            Text("Eliminar")
                            
                        }
                        .padding(20)
                            
//                        .background(LinearGradient(gradient: Gradient(colors: [Color.pink, Color.orange]), startPoint: .leadind, endPoint: .trailing))
                            
//                        www.uigradients.xom
                            
                            
                            
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

struct SwiftUIView2_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView2()
    }
}
