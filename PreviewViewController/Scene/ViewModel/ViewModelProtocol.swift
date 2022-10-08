//
//  ViewModelProtocol.swift
//  PreviewViewController
//
//  Created by Renato F. dos Santos Jr on 08/10/22.
//

import Foundation
import UIKit

protocol ViewModelProtocol: AnyObject {
    var title: String { get }
    var image: UIImage { get }
    var color: UIColor { get }
}
