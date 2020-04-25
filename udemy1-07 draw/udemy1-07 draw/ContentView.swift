//
//  ContentView.swift
//  udemy1-07 draw
//
//  Created by Mauro Ciargo on 4/23/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
//        Path() {path in
//            path.move(to: CGPoint(x:30, y:30))
//            path.addLine(to: CGPoint (x:230, y:30))
//            path.addLine(to: CGPoint (x:230, y:150))
//            path.addLine(to: CGPoint (x:30, y:150))
//            path.closeSubpath()
//        }
//      .stroke(Color.blue, lineWidth: 10)
//        .fill(Color.red)  en lugar de stroke
        Spacer()
            
            Text("prueba")
                .font(.system(.title, design:.rounded))
                .frame(width:200, height:100)
                .background(FunnyLabel(percCircle: 0.9).fill(Color.blue))

            
            
            Path(){ path in
                path.move(to: CGPoint(x: 60, y: 130))
                path.addQuadCurve(to: CGPoint(x:200, y:130),control: CGPoint(x:130, y: 60))
                path.addRect(CGRect(x:30, y:130, width:200, height:120))
                   
                }
//.fill(Color.red)
             .stroke(Color.pink, lineWidth: 10)
                
            
            
        Path() {path in
            path.move(to: CGPoint(x:200, y:200))
            path.addArc(center: CGPoint(x:200, y:200),
                        radius: 160,
                        startAngle: Angle(degrees: 0),
                        endAngle: Angle(degrees: 90),
                        clockwise: true) /* si coloco false me dibuja el pñunto faltante*/

        }.fill(Color.yellow)
    
           
        }
        
}

    
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    struct FunnyLabel: Shape {
        
        var percCircle:CGFloat = 1.0
        
        func path(in rect: CGRect) -> Path {
            
        var path = Path()
            
            path.move(to: CGPoint(x: (rect.size.width) * (1-percCircle)/2, y: 0))
            path.addQuadCurve(to: CGPoint(x: (rect.size.width) * (1-(1-percCircle)/2), y:0), control: CGPoint(x:rect.size.width/2, y: -(rect.size.width*0.4)))
            path.addRect(CGRect(x:0, y:0, width:rect.size.width,height:rect.size.height))
    return path
            
        }
    }
}
