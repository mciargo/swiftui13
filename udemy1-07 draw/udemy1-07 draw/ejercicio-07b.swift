//
//  ejercicio-07b.swift
//  udemy1-07 draw
//
//  Created by Mauro Ciargo on 4/24/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//

import SwiftUI

struct ejercicio_07b: View {
    var body: some View {
        
        ZStack{
       
            
            Circle()
                .foregroundColor(.pink)
                .frame(width:100, height:100)
                
                .overlay(RoundedRectangle(cornerRadius: 10)
                .frame(width:35, height:35)
                .foregroundColor(.white))
            
//            Text("HOLA").fontWeight(.heavy).foregroundColor(.white)
            
       
        }
    }
}

struct ejercicio_07b_Previews: PreviewProvider {
    static var previews: some View {
        ejercicio_07b()
    }
}
