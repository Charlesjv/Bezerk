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
    
    let PLAYER_SPEED:CGFloat = 10
    
    var enemyy:[SKSpriteNode] = []
    
    override func didMove(to view: SKView) {
        
        self.physicsWorld.contactDelegate = self
        
        
        robot = self.childNode(withName: "player") as! SKSpriteNode
        
      // get all your enemy sprites
        
        let moveAction = SKAction.moveBy(x: -400, y: 0, duration: 10)
        
        self.enumerateChildNodes(withName: "enemy") { (node, stop) in
            let enemy = node as! SKSpriteNode
            enemy.run(moveAction)
        }
    }
        
    
    override func update(_ currentTime: TimeInterval) {
    
}

    func didBegin(_ contact: SKPhysicsContact) {
        print("COLLISION DETECTED")
        
        let nodeA = contact.bodyA.node
         let nodeB = contact.bodyB.node
        
        if(nodeA == nil || nodeB == nil){
            return
        }

        
        print("Sprite 1: \(nodeA!.name)")
        print("Sprite 2: \(nodeB!.name)")
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
            
            robot.position.y = robot.position.y + PLAYER_SPEED
            
        }else if (nodeTouched == "down"){
            robot.position.y = robot.position.y - PLAYER_SPEED
            
        }else if (nodeTouched == "left"){
            robot.position.x = robot.position.x - PLAYER_SPEED
            
        }else if (nodeTouched == "right"){
            robot.position.x = robot.position.x + PLAYER_SPEED
            
        }
        
        
        // FIGURE OUT WHAT NODE THE MOUSE IS PUSHING
        
        
    }
}
