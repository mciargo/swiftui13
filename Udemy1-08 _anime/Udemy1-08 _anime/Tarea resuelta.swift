//
//  Tarea resuelta.swift
//  Udemy1-08 _anime
//
//  Created by Mauro Ciargo on 4/25/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//

import SwiftUI

struct Tarea_resuelta: View {
    
    @State private var progress: CGFloat = 0.0
 
    
    var body: some View {
       
        ZStack{
            
            Text("\(Int(progress * 100)) %")
                .font(.system(.title, design: .rounded)).bold()
            
            Circle()
                .stroke(Color(.systemGray5), lineWidth: 12)
                .frame(width: 150, height: 150)
            
            Circle()
                .trim(from: 0, to: progress)
                .stroke(Color.green, lineWidth: 12)
                .frame(width: 150, height: 150)
                .rotationEffect(Angle(degrees: -90))
            
        }/*fin XSgtack*/
            .onAppear(){
                
                Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in self.progress += 0.01
                    if self.progress >= 1.0{ timer.invalidate()
                        
                        
                        
                        
                        
                    }
                }
        }
        
        
        
    }
}

struct Tarea_resuelta_Previews: PreviewProvider {
    static var previews: some View {
        Tarea_resuelta()
    }
}
