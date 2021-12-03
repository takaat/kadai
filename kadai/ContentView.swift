import SwiftUI

struct ContentView: View {
    @State private var num1: Int
    @State private var num2: Int
    @State private var num3: Int
    @State private var num4: Int
    @State private var num5: Int
    @State private var ans: Int
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                TextField("", value: $num1, format: .number)
                    .frame(width: 150, height: 50)
                    .border(.secondary)
                    .padding(.leading)
                TextField("", value: $num2, format: .number)
                    .frame(width: 150, height: 50)
                    .border(.secondary)
                    .padding(.leading)
                TextField("", value: $num3, format: .number)
                    .frame(width: 150, height: 50)
                    .border(.secondary)
                    .padding(.leading)
                TextField("", value: $num4, format: .number)
                    .frame(width: 150, height: 50)
                    .border(.secondary)
                    .padding(.leading)
                TextField("", value: $num5, format: .number)
                    .frame(width: 150, height: 50)
                    .border(.secondary)
                    .padding(.leading)
                Button("Button", action: {ans = num1 + num2})
                    .padding(.leading)
                Text("1")
                    .padding([.top, .leading])
                Spacer()
            }
            .textFieldStyle(.roundedBorder)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
