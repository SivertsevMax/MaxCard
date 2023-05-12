import SwiftUI
import MessageUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 1)
                .edgesIgnoringSafeArea(.all)
            VStack (
                alignment: .center,
                spacing: 10
            ) {
                Image("MAX")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.cyan, lineWidth: 5))
                ZStack {
                    VStack {
                        Text("Sivertev Maxim")
                            .bold()
                            .foregroundColor(.black)
                            .font(Font.custom("Pacifico-Regular", size: 40))
                        Text("IOS junior DEV")
                            .foregroundColor(.black)
                            .font(Font.system(size: 25))
                    }
                    
                }
                Divider()
                ContactView(colorFrame: .white,
                            frameRadius: 20,
                            frameWight: 350, frameHeight: 50,
                            systemImage: "phone.fill",
                            systemImageColor: .green,
                            text: "+7 908 239 21 07",
                            textSize: 25)
                
                ContactView(colorFrame: .white,
                            frameRadius: 20,
                            frameWight: 350, frameHeight: 50,
                            systemImage: "envelope.fill",
                            systemImageColor: .green,
                            text: "sivertsev1995@icloud.com",
                            textSize: 25)
                
                ContactView(colorFrame: .white,
                            frameRadius: 20,
                            frameWight: 350,
                            frameHeight: 50,
                            systemImage: "location.magnifyingglass",
                            systemImageColor: .green,
                            text: "Sarov, Sarov 607186, Russia",
                            textSize: 25)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
