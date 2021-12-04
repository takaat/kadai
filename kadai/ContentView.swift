import SwiftUI

struct ContentView: View {
    @State private var num1: Int?
    @State private var num2: Int?
    @State private var num3: Int?
    @State private var num4: Int?
    @State private var num5: Int?
    @State private var ans: Int = 0

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                NumberField(number: $num1)
                NumberField(number: $num2)
                NumberField(number: $num3)
                NumberField(number: $num4)
                NumberField(number: $num5)
                Button("Button", action: {
                    ans = [num1, num2, num3, num4, num5]
                        .map { $0 ?? 0 }.reduce(0, +)
                })
                    .padding(.leading)
                Text(ans, format: .number)
                    .padding([.top, .leading])
                Spacer()
            }
            Spacer()
        }
    }
}

struct NumberField: View {
    @Binding var number: Int?

    var body: some View {
        TextField("", value: $number, format: .number)
            .frame(width: 150, height: 50)
            .border(.secondary)
            .padding(.leading)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
