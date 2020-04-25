//
//  donut.swift
//  udemy1-07 draw
//
//  Created by Mauro Ciargo on 4/24/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//

import SwiftUI

struct donut: View {
    var body: some View {
        
        
        ZStack{
            Circle()
            .trim(from:0.0, to: 0.3)
            .stroke(Color(.brown), lineWidth: 40)
                
            Circle()
                .trim(from:0.30, to: 0.50)
                .stroke(Color(.systemPink), lineWidth: 40)
                
            Circle()
                .trim(from:0.50, to: 0.75)
                .stroke(Color(.orange), lineWidth: 40)
 
            Circle()
                .trim(from:0.750, to: 1.0)
                .stroke(Color(.blue), lineWidth: 70)
            .overlay(
                Text("24 %")
               .font(.system(.title, design: .rounded))
              .bold()
//
                  .offset(x:100, y:-115)
                .foregroundColor(.white)
            )
            
        }
                .frame(width: 300, height: 300)
            
            
            
        }
    }


struct donut_Previews: PreviewProvider {
    static var previews: some View {
        donut()
    }
}
