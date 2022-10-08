//
//  PreviewViewController.swift
//  PreviewViewController
//
//  Created by Renato F. dos Santos Jr on 08/10/22.
//

import SwiftUI
import UIKit

struct LivePreviewViewController: UIViewControllerRepresentable {

    typealias UIViewControllerType = UIViewController

    let viewControllerBuilder: () -> UIViewController

    init(_ viewControllerbuilder: @escaping () -> UIViewController) {
        self.viewControllerBuilder = viewControllerbuilder
    }

    func makeUIViewController(context: Context) -> UIViewController {
        viewControllerBuilder()
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) { }

}
