//
//  Tarea.Barra-2.swift
//  Udemy1-08 _anime
//
//  Created by Mauro Ciargo on 4/25/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//

import SwiftUI

struct Tarea_Barra_2: View {
    
    @State var percent : CGFloat = 0
    
  
    
    func calcPer()->CGFloat{
    let width = UIScreen.main.bounds.width - 66
        return width * self.percent}
    
    var body: some View {
        
      VStack{
        ZStack(alignment: .leading){
      
            Capsule().fill(Color.black.opacity(0.2)).frame(height: 20)
            Capsule()
                .fill(LinearGradient(gradient: .init(colors: [Color("Color1"),Color("Color2")]), startPoint: .leading, endPoint: .trailing))
                .frame(width: self.calcPer(), height: 22)
        }.padding(18)
            .background(Color.black.opacity(0.085))
        .cornerRadius(15)
        /*fin zstack */
        
            .onTapGesture {
                self.percent = 0.75
    
        }
        .animation(.spring())
        }/*fin Vstack*/
    }
}


struct Tarea_Barra_2_Previews: PreviewProvider {
    static var previews: some View {
        Tarea_Barra_2()
    }
}

