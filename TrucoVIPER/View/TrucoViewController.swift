//
//  ViewController.swift
//  TrucoVIPER
//
//  Created by Andres Macagno on 25/11/2020.
//

import UIKit

class TrucoViewController: UIViewController {
    var presenter: ViewToPresenterProtocol?
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var player1Label: UILabel!
    @IBOutlet weak var player2Label: UILabel!
    @IBOutlet weak var scoreP1Label: UILabel!
    @IBOutlet weak var scoreP2Label: UILabel!
    @IBOutlet weak var player1Field: UITextField!
    @IBOutlet weak var player2Field: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter?.viewDidLoad()
    }
    
    func addGesture() {
        let tapBackground = UITapGestureRecognizer(target: self, action: #selector(self.backgroundTapped(_:)))
        self.view.addGestureRecognizer(tapBackground)
    }
    
    @objc func backgroundTapped(_ sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    
    @IBAction func onTouchPlusP1(_ sender: Any) {
        self.presenter?.updateScore(id: 0, points: 1)
    }
    
    @IBAction func onTouchPlusP2(_ sender: Any) {
        self.presenter?.updateScore(id: 1, points: 1)
    }
    
    @IBAction func onTouchMinusP1(_ sender: Any) {
        self.presenter?.updateScore(id: 0, points: -1)
    }
    
    @IBAction func onTouchMinusP2(_ sender: Any) {
        self.presenter?.updateScore(id: 1, points: -1)
    }
    
    @IBAction func onTouchRefresh(_ sender: Any) {
        self.presenter?.updateName(id: 0, newName: self.player1Field.text ?? "")
        self.presenter?.updateName(id: 1, newName: self.player2Field.text ?? "")
        self.view.endEditing(true)
    }
    
    @IBAction func onTouchRestart(_ sender: Any) {
        self.presenter?.restartScore()
    }
    
    @IBAction func onTouchFaq(_ sender: Any) {
        if let navController = self.navigationController {
            self.presenter?.navigateToFaq(navigationController: navController)
        }
    }
}

extension TrucoViewController: PresenterToViewProtocol {
    func updatePlayerOneName(newName: String) {
        self.player1Label.text = newName
    }
    
    func updatePlayerTwoName(newName: String) {
        self.player2Label.text = newName
    }
    
    func updatePlayerOneScore(newScore: String) {
        self.scoreP1Label.text = newScore
    }
    
    func updatePlayerTwoScore(newScore: String) {
        self.scoreP2Label.text = newScore
    }
    
    func restartGame() {
        self.scoreP1Label.text = "0"
        self.scoreP2Label.text = "0"
    }
    
    func setupUI() {
        self.titleLabel.text = "ANOTADOR TRUCO"
        self.titleLabel.textColor = .blue
        
        self.player1Label.textColor = .red
        self.player2Label.textColor = .red
        
        self.scoreP1Label.textColor = .green
        self.scoreP2Label.textColor = .green
        
        self.addGesture()
    }
}
