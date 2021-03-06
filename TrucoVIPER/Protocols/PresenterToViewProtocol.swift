//
//  PresenterToViewProtocol.swift
//  TrucoVIPER
//
//  Created by Andres Macagno on 25/11/2020.
//

import Foundation

internal protocol PresenterToViewProtocol: AnyObject {
    func updatePlayerOneName(newName: String)
    func updatePlayerTwoName(newName: String)
    func updatePlayerOneScore(newScore: String)
    func updatePlayerTwoScore(newScore: String)
    func restartGame()
    func setupUI()
}
