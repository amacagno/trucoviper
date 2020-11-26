//
//  PresenterToRouterProtocol.swift
//  TrucoVIPER
//
//  Created by Andres Macagno on 25/11/2020.
//

import Foundation
import UIKit

internal protocol PresenterToRouterProtocol: AnyObject {
    static func build() -> UIViewController
    func navigateToFaq(navigationController: UINavigationController)
}
