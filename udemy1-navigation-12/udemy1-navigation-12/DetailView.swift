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
            Text("PRESENTACIÓN").fontWeight(.black).padding(40)
            Text(salsa.recipe).font(.system(.body, design: .rounded)).padding(30)
            Image(salsa.imageModo).resizable().aspectRatio(contentMode: .fill)
            .frame(width: 400, height: 100)
                .clipped().padding(.vertical)
            Spacer()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(salsa: Salsa(name: "Salsas Pesto Pasta", image: "pesto", recipe: "Il pesto è una salsa fredda, sinonimo e simbolo di Genova e dell'intera Liguria, che da alcuni decenni è tra le salse più conosciute e diffuse nel mondo. Le prime tracce del pesto le troviamo addirittura nell'800 e da allora la ricetta si è sempre mantenuta identica, almeno nella preparazione casalinga. Per fare il vero pesto alla genovese occorrono un mortaio di marmo e un pestello di legno e... molta pazienza.", imageModo: "pest-modo"))
    }
}
