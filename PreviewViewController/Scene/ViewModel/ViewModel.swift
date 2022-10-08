//
//  ViewModel.swift
//  PreviewViewController
//
//  Created by Renato F. dos Santos Jr on 08/10/22.
//

import Foundation

final class ViewModel: ViewModelProtocol {

    private(set) var title: String
    private(set) var model: Model

    init(withModel model: Model) {
        self.model = model
        self.title = self.model.title
    }
}
