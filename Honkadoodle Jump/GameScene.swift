//
//  GameScene.swift
//  Honkadoodle Jump
//
//  Created by Jack Gardner on 1/29/26.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate{
    var player: Player! //TODO: Create Player class
    var platformManager: PlatformManger! //TODO: Create Platform/PlaformManager Class
    let cameraNode = SKCamerNode()
    
    override func didMove(to view: SKView) {
        //calls setup functions to setup our camera, player, platofrms, and scene
    }
    
    
    
    
    // MAIN GAME LOOP
    override func update(_ currentTime: TimeInterval) {
        //Camera following player
        //Update platform generation
    }
        
    // COLLISION MANAGEMENT
    func didBegin(_ contact: SKPhysicsContact) {
        //method to handke any collision
    }
    
    // TOUCH CONTROLS
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        //code for what the touch should lead to
    }

}
