//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Eder Mitten on 9/19/18.
//  Copyright © 2018 Eder Mitten. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //1 nought, 2 crosses
    var activeGame = true
    
    var activePlayer = 1
    
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0] // 0: empty , 1 nougth, 2 crosses
    
    let winningCombination = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]

    @IBAction func buttonPressed(_ sender: AnyObject) {
        
        let activePosition = sender.tag - 1
        
        if gameState[activePosition] == 0 && activeGame {
            gameState[activePosition] = activePlayer
            
            if activePlayer == 1 {
                sender.setImage(UIImage(named: "nought.png"), for:[])
                activePlayer = 2
                
            } else {
                sender.setImage(UIImage(named: "cross.png"), for:[])
                activePlayer = 1
            }
            
            for combination in winningCombination {
                if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[02]] {
                
                    //we have a winnwer
                    activeGame = false
                    print(gameState[combination[0]])
                }
            }
        }
        
        
        
        
        //print(sender.tag!)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

