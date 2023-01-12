//
//  IntegrateCamera.swift
//  Pickers
//
//  Created by Leonardo Medeiros on 12/01/23.
//

import SwiftUI

struct IntegrateCamera: View {
    @State private var showImagePicker: Bool = false
    @State private var image: Image? = nil
    
    var body: some View {
        VStack {
            image?.resizable()
                .scaledToFit()
            
            Button("Open Camera") {
                self.showImagePicker = true
            }
            .padding()
            .background(.green)
            .foregroundColor(.white)
            .cornerRadius(10)
            .sheet(isPresented: $showImagePicker) {
                PhotoCaptureView(showImagePicker: $showImagePicker, image: $image)
            }
        }
    }
}

struct IntegrateCamera_Previews: PreviewProvider {
    static var previews: some View {
        IntegrateCamera()
    }
}
