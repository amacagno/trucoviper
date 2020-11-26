//
//  ViewToPresenterProtocol.swift
//  TrucoVIPER
//
//  Created by Andres Macagno on 25/11/2020.
//

import Foundation
import UIKit

internal protocol ViewToPresenterProtocol: AnyObject {
    func updateScore(id: Int, points: Int)
    func updateName(id: Int, newName: String)
    func navigateToFaq(navigationController: UINavigationController)
    func restartScore()
    func viewDidLoad()
}
