//
//  TrucoPresenter.swift
//  TrucoVIPER
//
//  Created by Andres Macagno on 25/11/2020.
//

import Foundation
import UIKit

internal class TrucoPresenter {
    internal var view: PresenterToViewProtocol?
    internal var interactor: PresenterToInteractorProtocol?
    internal var router: PresenterToRouterProtocol?
}

extension TrucoPresenter: ViewToPresenterProtocol {
    func viewDidLoad() {
        self.view?.setupUI()
    }
    
    func updateScore(id: Int, points: Int) {
        self.interactor?.updatePlayerScore(id: id, points: points)
    }
    
    func updateName(id: Int, newName: String) {
        self.interactor?.updatePlayerName(id: id, newName: newName)
    }
    
    func navigateToFaq(navigationController: UINavigationController) {
        self.router?.navigateToFaq(navigationController: navigationController)
    }
    
    func restartScore() {
        self.interactor?.restartGame()
    }
}

extension TrucoPresenter: InteractorToPresenterProtocol {
    func updatePlayerOneName(newName: String) {
        self.view?.updatePlayerOneName(newName: newName)
    }
    
    func updatePlayerTwoName(newName: String) {
        self.view?.updatePlayerTwoName(newName: newName)
    }
    
    func updatePlayerOneScore(newScore: String) {
        self.view?.updatePlayerOneScore(newScore: newScore)
    }
    
    func updatePlayerTwoScore(newScore: String) {
        self.view?.updatePlayerTwoScore(newScore: newScore)
    }
    
    func restartGame() {
        self.view?.restartGame()
    }
}
