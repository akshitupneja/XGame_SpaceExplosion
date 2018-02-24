//
//  GameOverScene.swift
//  MAPD724-W2018-Lesson2
//Author's Name : Santhosh Damodharan, Akshit Upneja, Aman Preet Kaur
//StudentID : 300964037, 300976590, 300966930
//
//  Created by Akshit Upneja on 2018-02-06.
//  Copyright © 2018 Akshit Upneja. All rights reserved.
//

import SpriteKit

class GameOverScene: SKScene {
    
    var score:Int = 0
    var backgroundMusic: SKAudioNode!
    var starfield:SKEmitterNode!
    
    override func didMove(to view: SKView) {
        if let musicURL = Bundle.main.url(forResource: "Game-Menu", withExtension: "mp3") {
            backgroundMusic = SKAudioNode(url: musicURL)
            addChild(backgroundMusic)
        }
        
    
        
        let gameOverLabel : SKLabelNode = self.childNode(withName: "gameOverLabel") as!
        SKLabelNode
        
        let scoreLabel : SKLabelNode = self.childNode(withName: "scoreLabel") as!
        SKLabelNode
        
        let scorePointsLabel : SKLabelNode = self.childNode(withName: "scorePointsLabel") as!
        SKLabelNode
        scorePointsLabel.text = "\(score)"
        
        let playAgainButton : SKSpriteNode = self.childNode(withName: "playAgainButton") as!
        SKSpriteNode
        
        let mainMenuButton : SKSpriteNode = self.childNode(withName: "mainMenuButton") as!
        SKSpriteNode
        
        let startfield : SKEmitterNode = self.childNode(withName: "starfield") as! SKEmitterNode

        startfield.advanceSimulationTime(10)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
        let touch = touches.first
        if let location = touch?.location(in: self){
            let nodesArray = self.nodes(at: location)
            
            if nodesArray.first?.name == "playAgainButton"{

                if let scene = SKScene(fileNamed: "GameScene") {
                    // Set the scale mode to scale to fit the window
                    scene.scaleMode = .aspectFit
                    
                    // Present the scene
                    view?.presentScene(scene, transition: SKTransition.crossFade(withDuration: 0.5))
                }
                
            }
            if nodesArray.first?.name == "mainMenuButton"{
                
                if let scene = SKScene(fileNamed: "StartScene") {
                    // Set the scale mode to scale to fit the window
                    scene.scaleMode = .aspectFit
                    
                    // Present the scene
                    view?.presentScene(scene, transition: SKTransition.crossFade(withDuration: 0.5))
                }
                
            }
        }
    }
  
}
