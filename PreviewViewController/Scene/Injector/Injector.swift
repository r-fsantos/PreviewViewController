//
//  Injector.swift
//  PreviewViewController
//
//  Created by Renato F. dos Santos Jr on 08/10/22.
//

import Foundation
import UIKit

final class Injector {

    static var shared: Injector = .init()

    private lazy var previewModel: Model = {
        let title = "Preview ViewController"
        let image = UIImage(systemName: "location.fill")
        let color = UIColor.lightGray

        let previewModel = Model(title: title,
                                 color: color,
                                 image: image ?? UIImage())
        return previewModel
    }()

    // TODO: Type must be the protocol!
    private lazy var previewViewModel: ViewModel = {
        let model = previewModel
        let viewModel = ViewModel(withModel: model)
        return viewModel
    }()

    // TODO: Type must be the protocol!
    private lazy var previewView: View = {
        let view = View()
        return view
    }()

    lazy var getPreviewViewController: ViewController = {
        let view = previewView
        let viewModel = previewViewModel
        let viewController = ViewController(withCustomView: view, viewModel: viewModel)
        return viewController
    }()

}
