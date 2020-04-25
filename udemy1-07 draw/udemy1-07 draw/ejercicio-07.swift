//
//  ejercicio-07.swift
//  udemy1-07 draw
//
//  Created by Mauro Ciargo on 4/23/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//

import SwiftUI

struct ejercicio_07: View {
    var body: some View {
    
        ZStack{
        Path() {path in
            path.move(to: CGPoint(x:200, y:200))
            path.addArc(center: CGPoint(x:200, y:200),
                        radius: 160,
                        startAngle: Angle(degrees: 0),
                        endAngle: Angle(degrees: 200),
                        clockwise: true) /* si coloco false me dibuja el pñunto faltante*/
        }.fill(Color(.systemBlue))
            
            Path() {path in
            path.move(to: CGPoint(x:180, y:200))
            path.addArc(center: CGPoint(x:180, y:200),
                        radius: 160,
                        startAngle: Angle(degrees: 200),
                        endAngle: Angle(degrees: 160),
                        clockwise: true)
            }.fill(Color.red)
            
            Path() {path in
            path.move(to: CGPoint(x:200, y:200))
            path.addArc(center: CGPoint(x:200, y:200),
                        radius: 160,
                        startAngle: Angle(degrees: 160),
                        endAngle: Angle(degrees: 110),
                        clockwise: true)
            }.fill(Color.green)
            
            Path() {path in
            path.move(to: CGPoint(x:200, y:200))
            path.addArc(center: CGPoint(x:200, y:200),
                        radius: 160,
                        startAngle: Angle(degrees: 110),
                        endAngle: Angle(degrees: 0),
                        clockwise: true)
            }.fill(Color.yellow)
            
            
                   
            
    }/*fin de zstack*/
   
    }
    
}

struct ejercicio_07_Previews: PreviewProvider {
    static var previews: some View {
        ejercicio_07()
    }
}



