//
//  MovieDetailsController.swift
//  LoadingSwiftUIViewInUIKit
//
//  Created by Leonardo Medeiros on 22/01/23.
//

import Foundation
import UIKit
import SwiftUI

// UIViewControllerRepresentable is going to allow you represent a controller that is build in UIKit into a SwiftUI Application
struct MovieDetails: UIViewControllerRepresentable {
    let name: String
    typealias UIViewControllerType = MovieDetailsController
    
    func makeUIViewController(context: Context) -> MovieDetailsController {
        return MovieDetailsController()
    }
    
    func updateUIViewController(_ uiViewController: MovieDetailsController, context: Context) {
        uiViewController.setMovieName(name)
    }
}
class MovieDetailsController: UIViewController {
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "LABEL"
        label.font = UIFont(name: "Arial", size: 32)
        label.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(label)
        
        label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true

        label.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        label.heightAnchor.constraint(equalToConstant: 44).isActive = true

        return label
    }()
    
    func setMovieName(_ name: String) {
        titleLabel.text = name
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
