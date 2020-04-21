//
//  ContentView.swift
//  Udemy1-05
//
//  Created by Mauro Ciargo on 4/20/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        
        VStack{
            Spacer()
        Button(action: {
//            que debe hacer el boton
            print("boton hola pulsado")
            
//            es mejor hacerlo asi para ver si funciona la accion. Hay que apretar el boton debajo del boton de play abajo a la derecha del device. Debug preview en device. Y se abriran dos cajas abajo y se podra ver el print. esto es uytil si quiero examinar si un valor se calcula correctamnete y no quiero que apareszca en el device
            
        }) {
        
            
        //        como debe verse el boton
            Text("hola mundo").padding()
                .background(Color.green)
                .foregroundColor(.white)
                .font(.title)
                .cornerRadius(10)
              
        }
        
        Spacer()
        
        Button(action: {
        //            que debe hacer el boton
                    print("boton 2 hola pulsado")
                }) {
                
                    
                //        como debe verse el boton
                    Text("hola mundo 2").padding()
//                        el padding debe estar simpre antes para que el color llene el area
//                        .background(Color.green)
                        .foregroundColor(.green)
                        .font(.title)
                        
                        .border(Color.green, width: 6)
                        .cornerRadius(10)
                        
                    
                }
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
            
//            limite del boton ---------------------------------------
                        
                        Button(action: {
                                            print("boton 2 hola pulsado")
                                        }) {
                                            Text("hola mundo 2")
                                                .foregroundColor(.white)
                                                .font(.title)
                                                .padding()
                                                .background(Color.green)
                                                .cornerRadius(50)
                                                .overlay(RoundedRectangle(cornerRadius: 50).stroke(Color.blue, lineWidth: 5))

                                                .padding(50) /*Le pongo otro limite y lo separa 10 p del background*/
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
                                            .background(Color.red)
                                            .foregroundColor(.white)
                                            .font(.title)
                                            .cornerRadius(30)
                                                

                                                
                                                
            }
            
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
