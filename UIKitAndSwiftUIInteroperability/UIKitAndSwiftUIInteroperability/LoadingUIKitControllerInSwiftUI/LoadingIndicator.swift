//
//  LoadingIndicator.swift
//  UIKitAndSwiftUIInteroperability
//
//  Created by Leonardo Medeiros on 22/01/23.
//

import Foundation
import SwiftUI
import UIKit

// UIViewRepresentable allows you to represent views that are in UIKit
// and make them available in SwiftUI
struct LoadingIndicator: UIViewRepresentable {
    @Binding var loading: Bool
    typealias UIViewType = UIActivityIndicatorView
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView()
        activityIndicatorView.color = UIColor.gray
        return activityIndicatorView
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        if loading {
            uiView.startAnimating()
        } else {
            uiView.stopAnimating()
        }
    }
}
