//
//  GlobalStateUsingEnvironmentObject.swift
//  DataFlow
//
//  Created by Leonardo Medeiros on 08/01/23.
//

import SwiftUI

struct GlobalStateUsingEnvironmentObject: View {
    @EnvironmentObject var counter: Counter
    
    var body: some View {
        VStack(spacing: 10){
            Text("counter value: \(counter.value)")
                .font(.largeTitle)
            GreenCounterView()
            RedCounterView()
        }
    }
}

struct GlobalStateUsingEnvironmentObject_Previews: PreviewProvider {
    static var previews: some View {
        GlobalStateUsingEnvironmentObject().environmentObject(Counter())
    }
}

struct GreenCounterView:  View {
    @EnvironmentObject var counter: Counter

    var body: some View {
        Button("Increment") {
            counter.increment()
        }
        .padding()
        .background(.green)
        .foregroundColor(.white)
    }
}

struct RedCounterView:  View {
    @EnvironmentObject var counter: Counter

    var body: some View {
        Button("Increment") {
            counter.increment()
        }
        .padding()
        .background(.red)
        .foregroundColor(.white)
    }
}
