//
//  ContentView.swift
//  udemy1-navigation-12
//
//  Created by Mauro Ciargo on 5/11/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    var salsas = [
        Salsa(name: "Salsa Pesto", image: "pesto", recipe: "Il pesto è una salsa fredda, sinonimo e simbolo di Genova e dell'intera Liguria, che da alcuni decenni è tra le salse più conosciute e diffuse nel mondo. Le prime tracce del pesto le troviamo addirittura nell'800 e da allora la ricetta si è sempre mantenuta identica, almeno nella preparazione casalinga. Per fare il vero pesto alla genovese occorrono un mortaio di marmo e un pestello di legno e... molta pazienza.", imageModo: "pest-modo"),
        Salsa(name: "Pesto Siciliano", image: "pesto-siciliano", recipe: "Siete stanchi del classico pesto alla genovese e avete voglia di cambiare colore alla vostra pasta? Il pesto alla siciliana, allora, è la variante che fa per voi. La preparazione di questa versione si rifà ai frutti tipici della terra di questa splendida regione: pomodori ramati, ricotta, pinoli e tanto basilico, che insieme creano un tripudio di colori e sapori. Come tutte le ricette regionali, però, anche questa vanta numerosi adattamenti, cioè piccole variazioni negli ingredienti base che rispecchiano le tradizioni e i prodotti tipici del territorio. ", imageModo: "sicil-modo"),
        Salsa(name: "Salsa di Pomodoro", image: "pomodoro", recipe: "Il sugo (o salsa) di pomodoro fresco al basilico è il condimento mediterraneo per eccellenza, semplice e gustoso, ancor di più se fatto nel periodo di luglio-agosto, quando i pomodori sono saporiti e profumati e vengono preprarate le migliori conserve per l'inverno.Per preparare il sugo di pomodoro fresco potete comprare dei pomodori ramati a grappolo, oppure dei perini tipo San Marzano.Ricordatevi di scegliere dei pomodori freschissimi,  maturi ma sodi e privi di macchie.", imageModo: "pomo-modo"),
        Salsa(name: "Salsa alla Rucola", image: "pesto-rucola", recipe: "Il pesto è una crema versatile che si presta a moltissime varianti a seconda dei vostri gusti: il pesto di zucchine, per un sapore molto delicato o al contrario quello di menta per un gusto più intenso, oppure il classico pesto alla genovese. Quello che vi proponiamo oggi è il pesto di rucola, un condimento molto delicato ma saporito, veloce da preparare e ideale per condire la pasta nella stagione estiva, data la sua freschezza.", imageModo: "rucul-modo"),
        Salsa(name: "Salsa ai Pistacchi", image: "pesto-pistacchi", recipe: "Il pesto di pistacchi è una preparazione dal gusto fresco e aromatico che esalta il sapore unico e inconfondibile di questi frutti. Il segreto per ottenere un pesto squisito è senz’altro quello di usare pistacchi di prima qualità. Realizzarlo è semplice: si prepara un trito di pistacchi appena scottati e si insaporisce con basilico, grana e scorza di limone.Il pesto di pistacchi è il condimento perfetto per condire la pasta senza glutine  specialmente se condita con pomodori secchi e gamberi! Ovviamente si può gustare anche spalmato su croccanti crostoni di pane tostato da servire come stuzzicanti antipasti.", imageModo: "pist-modo"),
        Salsa(name: "Salsa Melanzane", image: "pesto-melanzane", recipe: " Ma del pesto ovviamente! Il pesto di melanzane è una salsa gustosa preparata con mandorle, formaggio grattugiato e olio extravergine, con l’aggiunta di scorza di limone e foglioline di menta per donare un tocco di freschezza e leggerezza. La consistenza grossolana delle mandorle parzialmente tritate contrasta piacevolmente con la cremosità della purea di melanzane, che vengono esaltate e valorizzate dai sapori semplici ma decisi di questa preparazione! Provate il pesto di melanzane con la pasta, sopra i crostini o addirittura in un panino", imageModo: "melanz-modo"),
        Salsa(name: "Passata di Pomodoro", image: "passata", recipe: "La passata di pomodoro è una delle conserve più preparate, specialmente nelle regioni del meridione d’Italia, dove il suo largo uso quotidiano ne ha fatto la regina delle conserve, resa ancora più speciale dal suo inconfondibile sapore mediterraneo. Preparare la passata di pomodoro è molto semplice: basta osservare alcune piccole ma importanti regole per un riuscita ottimale di questa conserva, in grado di conservare tutto il sapore dei pomodori come appena raccolti.", imageModo: "pass-modo"),
        Salsa(name: "Salsa alle Noci", image: "noci", recipe: "Salse e ripieni sono dei grandi classici della gastronomia Ligure, in particolar modo quelli a base di semi oleosi come noci pinoli e frutta secca, come il famoso pesto alla genovese. Questa salsa alle noci rientra a pieno diritto nei pezzi forti della tradizione culinaria ligure. Si caratterizza per il un sapore ricco ma delicato, con note rustiche ed intense, ed è ideale per essere utilizzata come condimento di molteplici primi piatti. L’abbinamento più tradizionale di questa salsa corposa e profumata? Con un grande classico della cucina genovese, i pansoti, ma non è infrequente che accompagni anche le trofie di castagne ed i corzetti. Per i più golosi provatela anche semplice sopra ad una fetta di pane tostato: da leccarsi i baffi!", imageModo: "noci-modo")
    ]

    init() {
        let appearance = UINavigationBarAppearance()
        appearance.largeTitleTextAttributes = [.font: UIFont(name: "Avenir", size:32)!, .foregroundColor: ( UIColor.systemOrange) ] /*para el titulo grfande*/
        
        appearance.titleTextAttributes = [.font: UIFont(name: "Avenir", size:18)!, .foregroundColor: ( UIColor.systemOrange) ] /*para el titulo pequeño*/
        
        /*el punto exclamativo es para forzar que fuerze a la fuente.Eso elimina el warning amarillo ya que no se sabe si existe o no esa fuente*/
        
//        tambien se puede modificar el boton del retorno
//        se pude utilizar los simbolos de SF
        
        appearance.setBackIndicatorImage(UIImage(systemName: "arrow.left.circle.fill"), transitionMaskImage: UIImage(systemName: "arrow.left.circle"))
        
        UINavigationBar.appearance().tintColor = .blue
        
//        para cambiar la apariencia de los titulos
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        
        NavigationView {
            List (salsas){ salsa in
                NavigationLink(destination:DetailView(salsa: salsa)) {
                    
                FilaSalsa(salsa: salsa)
                }
            }
            .navigationBarTitle("Recetas - Salsas")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct Salsa: Identifiable {
    var id = UUID() /*para identificar cion un codigo unico para cada miembro de la lista*/
    var name: String
    var image: String
    var recipe: String
    var imageModo: String
}

struct FilaSalsa: View {
    
    var salsa : Salsa
    var body: some View {
        
        HStack{
            
            Image(salsa.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .clipped()
                .cornerRadius(30)
            
            Text(salsa.name) /* la variable salsa se pone en minuscula aunque fue declarada en mayuscula*/
        }
    }
}
