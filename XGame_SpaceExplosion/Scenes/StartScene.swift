//
//  startScene.swift
//  Created by Akshit Upneja on 2018-02-06.
//  Copyright © 2018 Akshit Upneja. All rights reserved.
//

import SpriteKit

class StartScene: SKScene {
    
        var backgroundMusic: SKAudioNode!
    
    override func didMove(to view: SKView) {
        
        if let musicURL = Bundle.main.url(forResource: "Game-Menu", withExtension: "mp3") {
            backgroundMusic = SKAudioNode(url: musicURL)
            addChild(backgroundMusic)
        }

        print("Same screen = start")
        let gameTitleLabel : SKLabelNode = self.childNode(withName: "gameTitleLabel") as!
        SKLabelNode
        let playButton : SKSpriteNode = self.childNode(withName: "playButton") as!
        SKSpriteNode
        let InstructionButton : SKSpriteNode = self.childNode(withName: "InstructionButton") as!
        SKSpriteNode
        let startfield : SKEmitterNode = self.childNode(withName: "starfield") as! SKEmitterNode
        startfield.advanceSimulationTime(10)

    }
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
     
        let touch = touches.first
        if let location = touch?.location(in: self){
            let nodesArray = self.nodes(at: location)
            if nodesArray.first?.name == "playButton"{

                if let scene = SKScene(fileNamed: "GameScene") {
                    // Set the scale mode to scale to fit the window
                    scene.scaleMode = .aspectFit
                    
                    // Present the scene
                    view?.presentScene(scene, transition: SKTransition.crossFade(withDuration: 0.5))
                }
               // let gameScene = GameScene(size: self.size)
                // Present the scene
               // self.view?.presentScene(gameScene, transition: SKTransition.crossFade(withDuration: 1.00))

            }
            if nodesArray.first?.name == "InstructionButton"{
                
                if let scene = SKScene(fileNamed: "InstructionScene") {
                    // Set the scale mode to scale to fit the window
                    scene.scaleMode = .aspectFit
                    
                    // Present the scene
                    view?.presentScene(scene, transition: SKTransition.crossFade(withDuration: 0.5))
                }

            }
            }
        
    }
}

