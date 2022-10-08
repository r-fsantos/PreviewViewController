//
//  ViewModel.swift
//  PreviewViewController
//
//  Created by Renato F. dos Santos Jr on 08/10/22.
//

import Foundation
import UIKit

final class ViewModel: ViewModelProtocol {

    private(set) var title: String
    private(set) var image: UIImage
    private(set) var color: UIColor

    init(withModel model: Model) {
        self.title = model.title
        self.image = model.image
        self.color = model.color

    }
}
