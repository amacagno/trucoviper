//
//  TrucoInteractor.swift
//  TrucoVIPER
//
//  Created by Andres Macagno on 25/11/2020.
//

import Foundation

internal class TrucoInteractor {
    private var trucoPlayerService: TrucoPlayerService
    internal weak var presenter: InteractorToPresenterProtocol?
    
    internal init() {
        self.trucoPlayerService = TrucoPlayerService()
    }
}

extension TrucoInteractor: PresenterToInteractorProtocol {
    func updatePlayerScore(id: Int, points: Int) {
        self.trucoPlayerService.updatePlayerScore(id: id, points: points)
        
        let score = self.trucoPlayerService.getPlayer(id: id)?.playerScore ?? 0
        
        if id == 0 {
            self.presenter?.updatePlayerOneScore(newScore: String(score))
        } else {
            self.presenter?.updatePlayerTwoScore(newScore: String(score))
        }
    }
    
    func updatePlayerName(id: Int, newName: String) {
        self.trucoPlayerService.updatePlayerName(id: id, newName: newName)
        
        if id == 0 {
            self.presenter?.updatePlayerOneName(newName: newName)
        } else {
            self.presenter?.updatePlayerTwoName(newName: newName)
        }
    }
    
    func restartGame() {
        self.trucoPlayerService.restart()
        self.presenter?.restartGame()
    }
}
