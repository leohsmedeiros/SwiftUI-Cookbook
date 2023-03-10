//
//  LoadingUIKitController.swift
//  UIKitAndSwiftUIInteroperability
//
//  Created by Leonardo Medeiros on 22/01/23.
//

import SwiftUI

struct LoadingUIKitController: View {
    
    @State private var loading: Bool = false
    
    var body: some View {
        VStack {
            LoadingIndicator(loading: $loading)
            
            Button("Get Data") {
                loading = true
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    loading = false
                }
            }
        }
    }
}

struct LoadingUIKitController_Previews: PreviewProvider {
    static var previews: some View {
        LoadingUIKitController()
    }
}
