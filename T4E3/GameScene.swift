//
//  GameScene.swift
//  T4E3
//
//  Created by Jorge Marquez Torres on 28/1/16.
//  Copyright (c) 2016 jmarquez. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        /*let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Hello, World!"
        myLabel.fontSize = 45
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
        
        self.addChild(myLabel)*/
        /* Definimos el Menú Principal */
        self.backgroundColor = UIColor(red: 0.15, green: 0.15, blue:
            0.3, alpha: 1.0)
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Videojuego con SpriteKit";
        myLabel.fontSize = 20;
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame),
            y:CGRectGetMidY(self.frame));
        self.addChild(myLabel)
        
        let myLabel2 = SKLabelNode(fontNamed:"Chalkduster")
        myLabel2.text = "Toca para Empezar";
        myLabel2.fontSize = 15;
        myLabel2.position = CGPoint(x:CGRectGetMidX(self.frame),
            y:CGRectGetMidY(self.frame) - 100);
        self.addChild(myLabel2)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
        /*for touch in touches {
            let location = touch.locationInNode(self)
            
            let sprite = SKSpriteNode(imageNamed:"Spaceship")
            
            sprite.xScale = 0.5
            sprite.yScale = 0.5
            sprite.position = location
            
            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
            
            sprite.runAction(SKAction.repeatActionForever(action))
            
            self.addChild(sprite)
        }*/
        //Al tocar la pantalla cambiamos la escena
        let transicion = SKTransition.doorsOpenVerticalWithDuration(1.0)
        let juego = Videojuego(size: self.size)
        self.scene?.view?.presentScene(juego, transition: transicion)
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
