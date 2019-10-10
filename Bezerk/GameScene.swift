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
    
    var robot = SKSpriteNode()
    
    override func didMove(to view: SKView) {
        
        self.physicsWorld.contactDelegate = self
        
        
        robot = self.childNode(withName: "player") as! SKSpriteNode
        
        
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
        
        
        
        if(nodeTouched == "up"){
            
            robot.position.y = robot.position.y + 5
            
            
            
        }else if (nodeTouched == "down"){
            robot.position.y = robot.position.y - 5
            
        }else if (nodeTouched == "left"){
            robot.position.x = robot.position.x - 5
            
        }else if (nodeTouched == "right"){
            robot.position.x = robot.position.x + 5
            
        }
        
        
        // FIGURE OUT WHAT NODE THE MOUSE IS PUSHING
        
        
    }
}
