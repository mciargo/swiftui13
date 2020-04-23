Import SwiftUI



struct ClickView: View {



@State private var redClicks = 0

@State private var yellowClicks = 0

@State private var blueClicks = 0

@State private var totalClicks = 0



var body: some View {



VStack {



CounterView(redClicks: $redClicks, yellowClicks: $yellowClicks, blueClicks: $blueClicks, textColor: .black)





}

}

}



struct ClickView_Previews: PreviewProvider {

static var previews: some View {

ClickView()

}

}



struct CounterView: View {



@Binding var redClicks: Int

@Binding var yellowClicks: Int

@Binding var blueClicks: Int

var textColor: Color



var body: some View {

VStack {





Text("\(redClicks + yellowClicks + blueClicks)")

.font(.system(size: 120, weight: .bold, design: .rounded))

.foregroundColor(textColor)



Button(action: {

self.redClicks += 1

}){

Circle()

.stroke(lineWidth: 5)

.frame(width: 200, height: 200)

.foregroundColor(.red)

.overlay(

Text("\(redClicks)")

.font(.system(size: 100, weight: .bold, design: .rounded))

.foregroundColor(textColor)

)

}



Button(action: {

self.yellowClicks += 1

}){

Circle()

.stroke(lineWidth: 5)

.frame(width: 200, height: 200)

.foregroundColor(.yellow)

.overlay(

Text("\(yellowClicks)")

.font(.system(size: 100, weight: .bold, design: .rounded))

.foregroundColor(textColor)

)

}



Button(action: {

self.blueClicks += 1

}){

Circle()

.stroke(lineWidth: 5)

.frame(width: 200, height: 200)

.foregroundColor(.blue)

.overlay(

Text("\(blueClicks)")

.font(.system(size: 100, weight: .bold, design: .rounded))

.foregroundColor(textColor)

)

}

}

}

}

