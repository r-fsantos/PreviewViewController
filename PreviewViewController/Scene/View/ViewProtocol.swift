//
//  ViewProtocol.swift
//  PreviewViewController
//
//  Created by Renato F. dos Santos Jr on 08/10/22.
//

import Foundation
import UIKit

protocol ViewProtocol: UIView {
    var image: UIImage? { get }
    var imageView: UIImageView? { get }
    var colorBackground: UIColor? { get }
    func show(image: UIImage, withBackgroundColor colorBackground: UIColor)
}
