//
//  ContentView.swift
//  Tarea Udemy1-05
//
//  Created by Mauro Ciargo on 4/22/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//

import SwiftUI
//private var numTouch = 0
struct ContentView: View {
   
   @State private var numTouch = 0
    
    var body: some View {
       
        ZStack{
        
    Rectangle()
      .foregroundColor(Color(red: 29/255, green: 169/255, blue: 108/255))
           .edgesIgnoringSafeArea(.all)

//            .background(LinearGradient(gradient:  Gradient(colors: [Color("DarkOcean1"), Color("DarkOcean2")]), startPoint: .leading, endPoint: .trailing))
//
//            Rectangle().foregroundColor(Color(red: 33/255, green: 200/255, blue: 32/255))
//            .edgesIgnoringSafeArea(.all)
            
            
            //@State private var numHeart = 0
            //    var body: some View {
            //    despus del button
            //self.numHeart = 1 + self.numHeart
            //    al final del button
            //Text(String(numHeart))
            
        
            
        VStack{
        Text("CONTROL DE PASAJEROS").fontWeight(.heavy)
        .font(.system(size:40))
        .foregroundColor(.orange)
        .font(.largeTitle)
        .multilineTextAlignment(.center)
            .shadow(color: .black, radius: 0.1, x: 2, y: 2).padding(.bottom, 77)
              
// ------------ Inicio de boton-----------
           Button(action: {
            self.numTouch += 1
//             numTouch = 1 + numTouch
             print("boton pulsado")
//             print(numTouch)
           }){
             HStack{
               Image(systemName:"person.badge.plus.fill")
             Text("  Pasajeros")
             }
           }
            .buttonStyle(BasicButtonStyle())
            
 // ------------ Fin de boton-----------
            
//            Text(String(numTouch)).padding()
//            Text(String(numHeart))
            
            Text(" Total = \(numTouch)")
                
                    .fontWeight(.heavy)
                    .font(.system(size:40))
                    .foregroundColor(.orange)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                .shadow(color: .black, radius: 0.1, x: 2, y: 2).padding(.top, 50)
         
             /*Forma del Boton */
             
             
         Spacer()
            
            // ------------ Inicio de boton 2 -----------
            Button(action: {
                self.numTouch = 0
                
                print("boton reseteado")
                
            }){
                HStack{
                    Image(systemName:"clear")
                    Text("  Reset")
                }
            }
            .buttonStyle(BasicButtonStyle())
            
            // ------------ Fin de boton 2 -----------
              Spacer()
         }/*final de vstack*/
             
        }/*final del zstack*/
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BasicButtonStyle: ButtonStyle{
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
        
            .frame(minWidth:0, maxWidth: 200)
            .padding(20)
            .background(LinearGradient(gradient:  Gradient(colors: [Color("BlueRasperry1"), Color("BlueRasperry2")]), startPoint: .leading, endPoint: .trailing))
            
            .foregroundColor(.white)
            .font(.title)
            .cornerRadius(30)
            .shadow(color: .black, radius: 0.1, x: 2, y: 2)
            .padding(.horizontal, 15)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
            
    }
    
}
