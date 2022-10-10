//
//  PreviewViewController.swift
//  PreviewViewController
//
//  Created by Renato F. dos Santos Jr on 08/10/22.
//

import SwiftUI
import UIKit

//struct LivePreviewViewController: UIViewControllerRepresentable {
//
//    let viewControllerBuilder: () -> UIViewController
//
//    init(_ viewControllerbuilder: @escaping () -> UIViewController) {
//        self.viewControllerBuilder = viewControllerbuilder
//    }
//
//    func makeUIViewController(context: Context) -> UIViewController {
//        viewControllerBuilder()
//    }
//
//    func updateUIViewController(_ uiViewController: UIViewController, context: Context) { }
//
//}

struct LivePreviewViewController: UIViewRepresentable {

    private let viewController: UIViewController

    init(for viewController: UIViewController) {
        self.viewController = viewController
    }

    func makeUIView(context: Context) -> some UIView {
        self.viewController.view
    }

    func updateUIView(_ uiView: UIViewType, context: Context) { }
}
