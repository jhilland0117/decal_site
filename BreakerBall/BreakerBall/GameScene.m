//
//  GameScene.m
//  BreakerBall
//
//  Created by Joseph Hilland on 12/23/14.
//  Copyright (c) 2014 Effect. All rights reserved.
//

#import "GameScene.h"

@interface GameScene()
@property (nonatomic) SKSpriteNode *paddle;

@end

@implementation GameScene

- (void)addBall {
    // create the SKSprite Node object
    // create the object from the "ball.png"
    SKSpriteNode *ball = [SKSpriteNode spriteNodeWithImageNamed:@"ball"];
    
    // create a CGPoint for position
    CGPoint mypoint = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
    ball.position = mypoint;
    
    // lets add some physics
    // add a physics body to the ball
    ball.physicsBody = [SKPhysicsBody bodyWithCircleOfRadius:ball.frame.size.width/2];
    ball.physicsBody.friction = 0;
    ball.physicsBody.linearDamping = 0;
    ball.physicsBody.restitution = 1;
    
    
    // add the object to the scene
    [self addChild:ball];
    
    // create a vector
    CGVector myVector = CGVectorMake(20, -20);
    
    // apply the vector we created above
    [ball.physicsBody applyImpulse:myVector];
}

-(void)addPlayer:(CGFloat)size {
    // create paddle sprite
    self.paddle = [SKSpriteNode spriteNodeWithImageNamed:@"paddle"];
    // position it
    self.paddle.position = CGPointMake(size.width/2, 100);
}

-(void)didMoveToView:(SKView *)view {
    // attempt to fix screen size
    
    /* Setup your scene here */
    // add color
    self.backgroundColor = [SKColor whiteColor];
    
    // add physics body to the scene
    self.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect: self.frame];
    
    // lets change the gravity of the physics world
    // change gravity to 0 instead of standard 9.8 m/s^2
    self.physicsWorld.gravity = CGVectorMake(0, 0);
    
    [self addBall];
    
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
