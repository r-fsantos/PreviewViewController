//
//  ViewController.swift
//  PreviewViewController
//
//  Created by Renato F. dos Santos Jr on 08/10/22.
//

import UIKit

final class ViewController: UIViewController {

    private var customView: UIView
    private var viewModel: ViewModelProtocol

    init(withCustomView customView: UIView, viewModel: ViewModelProtocol) {
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
        title = viewModel.title
    }
}

