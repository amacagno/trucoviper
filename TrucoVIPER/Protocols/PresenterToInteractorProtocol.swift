//
//  PresenterToInteractorProtocol.swift
//  TrucoVIPER
//
//  Created by Andres Macagno on 25/11/2020.
//

import Foundation

internal protocol PresenterToInteractorProtocol: AnyObject {
    func updatePlayerScore(id: Int, points: Int)
    func updatePlayerName(id: Int, newName: String)
    func restartGame()
}
