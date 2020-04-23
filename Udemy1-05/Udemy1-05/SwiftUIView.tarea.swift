//
//  SwiftUIView.tarea.swift
//  Udemy1-05
//
//  Created by Mauro Ciargo on 4/22/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//

//.shadow(color: .black, radius: 0.1, x: 2, y: 2)
//Text("foto de zepelin")  .fontWeight(.heavy)  .foregroundColor(.orange)  .font(.largeTitle) .multilineTextAlignment(.center) .shadow(color: .black, radius: 0.1, x: 2, y: 2)

import SwiftUI

private var numHeart = 0

struct SwiftUIView_tarea: View {
    
    var count = 0
    
    
      var body: some View {
        
        VStack{
       
          Button(action: {

            numHeart = 1 + numHeart
            print("boton pulsado")
            print(numHeart)

          }){
            
            HStack{
              Image(systemName:"person.badge.plus.fill")
          
                .font(.system(size:40))
            Text("  Pasajeros").font(.system(size:30))
            }
          }
            .buttonStyle(BasicButtonStyle())
            
                Text(String(numHeart)).fontWeight(.heavy) .font(.system(size:60)) .foregroundColor(.orange)  .font(.largeTitle) .multilineTextAlignment(.center) .shadow(color: .black, radius: 0.1, x: 2, y: 2)
        
            /*Forma del Boton */
            
            
        
        }/*final de vstack*/
        
    }
}

struct SwiftUIView_tarea_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView_tarea()
    }
}

