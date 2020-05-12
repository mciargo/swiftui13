//
//  DetailView.swift
//  udemy1-navigation-12
//
//  Created by Mauro Ciargo on 5/11/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    var salsa: Salsa
    
    var body: some View {
        VStack {
            Image(salsa.image).resizable().aspectRatio(contentMode: .fill)
                .frame(width: 450, height: 150)
                .clipped()
            
            Text(salsa.name).font(.system(.title, design: .rounded))
                .fontWeight(.black)
            Spacer()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(salsa: Salsa(name: "Salsas Pesto Pasta", image: "pesto"))
    }
}
