

import SwiftUI

struct notes: View {
    @State var MyC : Color
    @State var MyT : String
    var body: some View {
        ZStack{
            MyC.ignoresSafeArea()
            
            Text("\(MyT)")
        }
    }
}

struct notes_Previews: PreviewProvider {
    static var previews: some View {
        notes(MyC: Color.yellow.opacity(0.4), MyT: "Halo")
    }
}
