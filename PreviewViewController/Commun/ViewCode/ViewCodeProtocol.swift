//
//  ViewCodeProtocol.swift
//  PreviewViewController
//
//  Created by Renato F. dos Santos Jr on 08/10/22.
//

import Foundation

protocol ViewCodeProtocol: AnyObject {
    func configureViews()
    func buildHierarchy()
    func setupConstraints()
}

extension ViewCodeProtocol {
    func setupViewCode() {
        configureViews()
        buildHierarchy()
        setupConstraints()
    }
}
