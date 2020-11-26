//
//  TrucoRouter.swift
//  TrucoVIPER
//
//  Created by Andres Macagno on 26/11/2020.
//

import Foundation
import UIKit

internal class TrucoRouter: PresenterToRouterProtocol {
    static func build() -> UIViewController {
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let viewController = storyBoard.instantiateViewController(identifier: "TrucoViewController") as! TrucoViewController
        
        let presenter = TrucoPresenter()
        let interactor = TrucoInteractor()
        let router = TrucoRouter()
        
        viewController.presenter = presenter
        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        return viewController
    }
    
    func navigateToFaq(navigationController: UINavigationController) {
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let faqVC = storyBoard.instantiateViewController(identifier: "FaqViewController") as! FaqViewController
        navigationController.pushViewController(faqVC, animated: true)
    }
}
