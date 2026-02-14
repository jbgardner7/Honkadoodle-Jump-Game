//
//  Player.swift
//  Honkadoodle Jump Game
//
//  Created by Jack Gardner on 2/13/26.
//

import SpriteKit

class Player: SKSpriteNode {
    init(position: CGPoint) { //wtf is a CGPoint. Need to lookup. I was told to use this
        let texture = SKTexture(imageNamed: "player")
        super.init(texture: texture, color: .clear, size: texture.size())
        self.position = position
        setupPhysics()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupPhysics() {
        physicsBody = SKPhysicsBody(rectangleOf: size)
        physicsBody?.affectedByGravity = true
        physicsBody?.allowsRotation = false
//        physicsBody?.categoryBitMask = PhysicsCategory.player
//        physicsBody?.contactTestBitMask = PhysicsCategory.platform
//        physicsBody?.collisionBitMask = PhysicsCategory.platform
        //Not sure what BitMask stuff is. ChatGPT recommended setting it. Will comment out for now until something breaks
        //Physics category class that we may need to create if using BitMask becomes necessary
//        import Foundation
//        
//        struct PhysicsCategory {
//            static let none: UInt32     = 0
//            static let player: UInt32   = 0x1 << 0
//            static let platform: UInt32 = 0x1 << 1  //May need to change based off Kyle's design
//        }
    }
    
    //I guess we can have bounce login inside the player object
    func bounce() {
        guard let body = physicsBody else { return }
        
        if body.velocity.dy < 0 {
            body.velocity.dy = 0
            body.applyImpulse(CGVector(dx: 0, dy: 600))
        }
    }
}
