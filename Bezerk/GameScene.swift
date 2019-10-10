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
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // GET THE MOUSE
        
        let mouseTouch = touches.first
        
        if(mouseTouch == nil){
            return
        }
        
        
        let location = mouseTouch!.location(in: self)
        let nodeTouched = atPoint(location).name
        print("Player touched:\(nodeTouched)")
        
        
        
        
        // FIGURE OUT WHAT NODE THE MOUSE IS PUSHING
        
        
    }
}
