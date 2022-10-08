//
//  ViewController.swift
//  PreviewViewController
//
//  Created by Renato F. dos Santos Jr on 08/10/22.
//

import SwiftUI
import UIKit

final class ViewController: UIViewController {

    private var customView: ViewProtocol // { self.view as ViewProtocol}
    private var viewModel: ViewModelProtocol

    init(withCustomView customView: ViewProtocol, viewModel: ViewModelProtocol) {
        self.customView = customView
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func loadView() {
        view = customView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        showView()
    }

    private func showView() {
        title = viewModel.title
        customView.show(image: viewModel.image, withBackgroundColor: viewModel.color)
        viewWillAppear(false)
    }
}
