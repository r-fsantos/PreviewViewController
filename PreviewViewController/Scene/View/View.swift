//
//  View.swift
//  PreviewViewController
//
//  Created by Renato F. dos Santos Jr on 08/10/22.
//

import UIKit

final class View: UIView {

    override init(frame: CGRect = UIScreen.main.bounds) {
        super.init(frame: frame)
        configure()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configure() {
        setupViewCode()
    }
}

extension View: ViewCodeProtocol {

    func configureViews() {
        backgroundColor = .lightGray
    }

    func buildHierarchy() { }

    func setupConstraints() { }

}
