//
//  TestViewController.swift
//  PreviewViewController
//
//  Created by Renato F. dos Santos Jr on 08/10/22.
//

import SwiftUI
import UIKit

final class TestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let image = UIImage(systemName: "play.circle.fill")
        let imageView = UIImageView(image: image!)
        view.addSubview(imageView)

        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.3),
            imageView.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.3),
        ])
    }
}

//struct ViewController_Previews: PreviewProvider {
//
//    static var previews: some View {
//        LivePreviewViewController(for: TestViewController()).previewLayout(.sizeThatFits)
//    }
//}

