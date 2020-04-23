//
//  ContentView.swift
//  Tarea udemy1 - 5b
//
//  Created by Mauro Ciargo on 4/23/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var numTouch = 0
    var body: some View {
        
        ZStack{
            Rectangle()
            .foregroundColor(Color(red: 9/255, green: 44/255, blue: 170/255))
                 .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                Text("Botones de suma y resta").fontWeight(.heavy)
                .font(.system(size:40))
                .foregroundColor(.orange)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                    .shadow(color: .black, radius: 0.1, x: 2, y: 2).padding(.bottom, 77)
                Spacer()
              ZStack{
                
//--------- inicio de boton 1 ---------------
                
                Image(systemName:"circle.fill").foregroundColor(Color(red: 29/255, green: 169/255, blue: 108/255)).font(.system(size:70)).shadow(color: .black, radius: 0.1, x: 2, y: 2)
                Button(action: {
                    self.numTouch += 1
                    print("boton pulsado")
                  
              }){
                Text(String(numTouch)).font(.system(size:33)).foregroundColor( .yellow).fontWeight(.bold)
                }/*fin de boton 1*/

                } /*fin ZStack 1*/
Spacer()
//--------- inicio de boton 2 ---------------
                ZStack{
                Image(systemName:"circle.fill").foregroundColor(Color(red: 29/255, green: 169/255, blue: 108/255)).font(.system(size:70)).shadow(color: .black, radius: 0.1, x: 2, y: 2)
        
                Button(action: {
                    self.numTouch -= 1
                }){
                    Text(String(numTouch)).font(.system(size:33)).foregroundColor( .yellow).fontWeight(.bold)
                }/*fin de boton 2k*/
                } /*fin ZStack 2*/
        Spacer()
        }/*fin de Vstack*/
        }/*fin del primer zstack*/
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
