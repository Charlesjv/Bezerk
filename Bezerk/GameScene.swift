//
//  GameScene.swift
//  Bezerk
//
//  Created by MacBook Pro on 2019-10-10.
//  Copyright © 2019 MacBook Pro. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene,SKPhysicsContactDelegate {
    
    override func didMove(to view: SKView) {
        
        self.physicsWorld.contactDelegate = self
    }
        
    
    override func update(_ currentTime: TimeInterval) {
    
}

    func didBegin(_ contact: SKPhysicsContact) {
        
        
}
}
