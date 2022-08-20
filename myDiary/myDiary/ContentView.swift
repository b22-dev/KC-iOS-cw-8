

import SwiftUI

struct ContentView: View {
    
    let colors = [Color.blue.opacity(0.4),
                         Color.pink.opacity(0.4),
                         Color.yellow.opacity(0.4),
                         Color.indigo.opacity(0.4)
    ]
    
    @State var selected : Color = Color.yellow.opacity(0.4)
    @State var myNote = ""
    
    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                Text("اختر لون كخلفية")
                    .font(.system(size: 30))

                HStack{
                    ForEach(colors, id:\.self) {
                        color in
                        
                        Circle()
                            .fill(color)
                            .frame(width: 65, height: 100)
                            .onTapGesture {
                                selected = color
                            }
                    }
                }

                TextField("", text: $myNote)
                    .frame(width: 275, height: 65, alignment: .leading)
                    .background(selected)
                    .cornerRadius(20)

            Spacer()
                NavigationLink(destination: notes(MyC: selected, MyT: myNote)) {

                    Text("حفظ")
                        .font(.title)
                        .foregroundColor(.white)
                        .frame(width: 250, height: 60)
                        .background(.green)
                        .cornerRadius(20)
                        .padding()
            
                }

                .navigationTitle("دفتر اليوميات")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

