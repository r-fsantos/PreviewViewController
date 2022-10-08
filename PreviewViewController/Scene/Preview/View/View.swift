//
//  View.swift
//  PreviewViewController
//
//  Created by Renato F. dos Santos Jr on 08/10/22.
//

import UIKit
import SwiftUI

final class View: UIView, ViewProtocol {

    private(set) var image: UIImage?
    private(set) var imageView: UIImageView?
    private(set) var colorBackground: UIColor?

    func show(image: UIImage, withBackgroundColor colorBackground: UIColor) {
        self.image = image
        self.colorBackground = colorBackground
        configure()
    }

    private func configure() {
        setupViewCode()
    }
}

extension View: ViewCodeProtocol {

    func configureViews() {
        backgroundColor = colorBackground
        imageView = .init(image: image)
        imageView?.translatesAutoresizingMaskIntoConstraints = false
    }

    func buildHierarchy() {
        guard let imageView = self.imageView else { return }
        addSubview(imageView)
    }

    func setupConstraints() {
        guard let imageView = self.imageView else { return }
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            imageView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.3),
            imageView.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 0.3),
        ])
    }

}
