//
//  Instruction.swift
//
//  Created by Akshit Upneja on 2018-02-06.
//  Copyright © 2018 Akshit Upneja. All rights reserved.
//

import SpriteKit

class InstructionScene: SKScene {
    
    var backgroundMusic: SKAudioNode!

    override func didMove(to view: SKView) {
    
        
        if let musicURL = Bundle.main.url(forResource: "Game-Menu", withExtension: "mp3") {
            backgroundMusic = SKAudioNode(url: musicURL)
            addChild(backgroundMusic)
        }
        

        let startfield : SKEmitterNode = self.childNode(withName: "starfield") as! SKEmitterNode
        startfield.advanceSimulationTime(10)
        
        print("This is instruction screen")


        let instructions : SKLabelNode = self.childNode(withName: "Instructions") as!
        SKLabelNode
        instructions.text = "Tilt left and Right to move and Tap to fire"



        
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
        let touch = touches.first
        if let location = touch?.location(in: self){
            let nodesArray = self.nodes(at: location)
            if nodesArray.first?.name == "gameOverButton"{
                
                if let scene = SKScene(fileNamed: "GameOverScene") {
                    // Set the scale mode to scale to fit the window
                    scene.scaleMode = .aspectFit
                    
                    // Present the scene
                    view?.presentScene(scene, transition: SKTransition.crossFade(withDuration: 0.5))
                     }
                
            }
        }
    }

}
