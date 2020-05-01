//
//  Tarea.Barra.swift
//  Udemy1-08 _anime
//
//  Created by Mauro Ciargo on 4/25/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//

import SwiftUI

struct Tarea_Barra: View {

    @State var percent : CGFloat = 0
    
    var body: some View {
        
        VStack{
        VistaPersonal(percent: self.$percent)
        }.padding()
            .onTapGesture {
                
                self.percent = 0.75
        }
        .animation(.spring())
         
        }
    }


struct Tarea_Barra_Previews: PreviewProvider {
    static var previews: some View {
        Tarea_Barra()
    }
}

struct VistaPersonal : View {
    
    @Binding var percent : CGFloat

    var body : some View{

        ZStack(alignment: .leading){
            ZStack(alignment: .trailing){
                
            Capsule().fill(Color.black.opacity(0.2)).frame(height: 20)
                
                Text(String(format: "% of", self.percent * 100) + "%" ).font(.caption).foregroundColor(Color.gray.opacity(0.75)).padding(.trailing)
            }

            Capsule()
                .fill(LinearGradient(gradient: .init(colors: [Color("Color1"),Color("Color2")]), startPoint: .leading, endPoint: .trailing)).frame(width: self.calPercent(), height: 22)
                
                .frame(width: 200, height: 22)
        }.padding(18)
            .background(Color.black.opacity(0.085))
        .cornerRadius(15)
        }
        func calPercent()->CGFloat{
            
            let width = UIScreen.main.bounds.width - 66
            
            return width * self.percent
        }
    }

