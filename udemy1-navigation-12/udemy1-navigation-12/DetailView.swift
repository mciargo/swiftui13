//
//  DetailView.swift
//  udemy1-navigation-12
//
//  Created by Mauro Ciargo on 5/11/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    @Environment(\.presentationMode) var presentationMode
    var salsa: Salsa
    
    var body: some View {
        
        ScrollView {
            VStack {
                Image(salsa.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 450, height: 50)
    //                .clipped()
                    .edgesIgnoringSafeArea(.top)
                    .padding(.bottom, 30)
                Text(salsa.name).font(.system(.title, design: .rounded))
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .padding(.top, 30)
                Text("PRESENTACIÓN").fontWeight(.black).padding(.top, 90)
                Text(salsa.recipe).font(.system(.body, design: .rounded))
                .lineLimit(nil)
                    .padding(30)
                Image(salsa.imageModo).resizable().aspectRatio(contentMode: .fill)
                .frame(width: 400, height: 100)
                    .clipped().padding(.vertical)
                Spacer()
            }
//        .navigationBarTitle("", displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action: {
                
////                navegar a  pantalla previa
                self.presentationMode.wrappedValue.dismiss()
                
            }, label: {
                Image(systemName: "arrow.left.circle.fill")
                    .font(.title)
                    .foregroundColor(.yellow)
            }
            ))
                /*naVEGAR A LA PANTALLA PREVIA*/
            
//                Image(systemName: "arrow.left.circle.fill")
//                    .font(.title)
//                    .foregroundColor(.white)
            }/*fin de scroll*/
    }

        /* esto se coloca para que la barra de navegacion se reduzca al monimo cuando voy a la vista desde contentview*/
   
    }


struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(salsa: Salsa(name: "Salsas Pesto Pasta", image: "pesto", recipe: "Il pesto è una salsa fredda, sinonimo e simbolo di Genova e dell'intera Liguria, che da alcuni decenni è tra le salse più conosciute e diffuse nel mondo. Le prime tracce del pesto le troviamo addirittura nell'800 e da allora la ricetta si è sempre mantenuta identica, almeno nella preparazione casalinga. Per fare il vero pesto alla genovese occorrono un mortaio di marmo e un pestello di legno e... molta pazienza.", imageModo: "pest-modo"))
    }
}
