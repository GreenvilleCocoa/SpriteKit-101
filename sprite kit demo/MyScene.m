//
//  MyScene.m
//  sprite kit demo
//
//  Created by Marcus Smith on 2/13/14.
//  Copyright (c) 2014 Marcus Smith. All rights reserved.
//

#import "MyScene.h"

@interface MyScene ()
{
    SKNode *worldNode;
    SKSpriteNode *actionNode;
}
@end

@implementation MyScene

- (id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor colorWithRed:0.15 green:0.15 blue:0.3 alpha:1.0];
        
//        //4. Making a regular SKNode
//        worldNode = [SKNode node];
//
//        worldNode.position = CGPointZero;
//
//        [self addChild:worldNode];
        
        SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
        
        myLabel.text = @"Hello, World!";
        myLabel.fontSize = 30;
        myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                       CGRectGetMidY(self.frame));
        
//        //5.Adding Label to the worldNode instead
//        [worldNode addChild:myLabel];
        
        [self addChild:myLabel];
        
        
        //1. How to create a Sprite node
        actionNode = [SKSpriteNode spriteNodeWithImageNamed:@"ball"];
//
//        //2. Add to scene
//        [self addChild:actionNode];
//        
//        //3. Positioning
//        actionNode.position = CGPointMake(0.0, 0.0);
//        actionNode.anchorPoint = CGPointMake(0.0, 0.0);
//        
//        //7. Add Sprite Node to worldNode
//        [worldNode addChild:actionNode];
//        
//        //8. Other Properties
//        [self otherProperties];
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
//    //6. Moving the parent SKNode
//    UITouch *touch = [touches anyObject];
//    CGPoint touchPoint = [touch locationInNode:self];
//    
//    if (touchPoint.x < CGRectGetMidX(self.frame)) {
//        worldNode.position = CGPointMake(worldNode.position.x - 50, worldNode.position.y);
//    }
//    else {
//        worldNode.position = CGPointMake(worldNode.position.x + 50, worldNode.position.y);
//    }
    
//    //16. Actions!
//    [self actions];
    
//    //28. Group Actions and Action Sequences
//    [self groupsAndSequences];

//    //36. Putting it all together
//    [self putItAllTogether];
}

- (void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

- (void)otherProperties {
//    //9. Color
//    actionNode.color = [UIColor greenColor];
//
//    //10. Blend
//    actionNode.colorBlendFactor = 0.5;
//
//    //11. z Rotation
//    actionNode.zRotation = M_PI_4;
//
//    //12. anchor point & position again
//    actionNode.anchorPoint = CGPointMake(0.5, 0.5);
//    actionNode.position = CGPointMake(actionNode.size.width / 2, actionNode.size.height / 2);
//
//    //13. Scale
//    actionNode.position = CGPointMake(100.0, 100.0);
//    actionNode.yScale = 2.0;
//
//    //14. More scale
//    actionNode.zRotation = 0;
//    actionNode.xScale = 3.0;
//
//    //15. Flipping
//    actionNode.yScale *= -1.0;
//
//    //Reset
//    actionNode.xScale = 1;
//    actionNode.yScale = 1;
//    
//    actionNode.colorBlendFactor = 0;
}

- (void)actions {
//    //17. Move to
//    SKAction *action = [SKAction moveToX: CGRectGetMidX(self.frame) duration:1.0];
//    
//    //19. Move by
//    action = [SKAction moveByX:50.0 y:10 duration:0.5];
//
//    //20. Scale to
//    action = [SKAction scaleTo:2 duration:1.0];
//
//    //21. Scale by
//    action = [SKAction scaleXBy:1.5 y:-1.2 duration:0.5];
//
//    //22. Colorize with color
//    action = [SKAction colorizeWithColor:[UIColor blueColor] colorBlendFactor:0.7 duration:2.0];
//
//    //23. Colorize blend factor
//    action = [SKAction colorizeWithColorBlendFactor:0.0 duration:0.5];
//
//    //24. Fade Alpha to
//    action = [SKAction fadeAlphaTo:0.2 duration:1];
//
//    //25. Rotate By
//    action = [SKAction rotateByAngle:M_PI_4 duration:0.5];
//
//    //26. Repeat
//    action = [SKAction repeatAction:action count:5];
//
//    //27. Repeat action forever
//    action = [SKAction repeatActionForever:action];

    // Other actions for later: waitForDuration, performSelector, removeFromParent
    
    // Other actions for next time: play sounds and animate frames
    
//    //18. Run Action
//    [actionNode runAction:action];
}

- (void)groupsAndSequences {
    //29. Groups
    SKAction *turnYellow = [SKAction colorizeWithColor:[UIColor yellowColor] colorBlendFactor:1.0 duration:0.8];
    SKAction *rotate = [SKAction rotateByAngle:-M_PI duration:0.5];
    
    SKAction *action = [SKAction group:@[turnYellow, rotate]];
    
//    //30. Sequences
//    action = [SKAction sequence:@[turnYellow, rotate]];
//
//    //31. Reversed actions
//    SKAction *reversedRotate = rotate.reversedAction;
//    
//    action = [SKAction sequence:@[rotate, reversedRotate]];
//
//    //32. together - sequences in a group
//    SKAction *rotateSequence = [SKAction sequence:@[rotate, reversedRotate]];
//    
//    SKAction *scaleUp = [SKAction scaleBy:2.0 duration:1.0];
//    SKAction *scaleDown = scaleUp.reversedAction;
//    
//    SKAction *scaleSequence = [SKAction sequence:@[scaleUp, scaleDown]];
//    
//    action = [SKAction group:@[rotateSequence, scaleSequence]];
//
//    //33. Repeat the group of sequences
//    action = [SKAction repeatAction:action count:5];
//    
//    //34. Group repeating sequences
//    action = [SKAction group:@[[SKAction repeatAction:rotateSequence count:5],[SKAction repeatAction:scaleSequence count:5]]];
//    
//    //35. together - groups in a sequence
//    SKAction *group1 = [SKAction group:@[rotate, scaleUp]];
//    SKAction *group2 = [SKAction group:@[reversedRotate, scaleDown]];
//    
//    action = [SKAction sequence:@[group1, group2]];
    
    //29. Run Action
    [actionNode runAction:action];
}

- (void)putItAllTogether {
    SKAction *turnRed = [SKAction colorizeWithColor:[UIColor redColor] colorBlendFactor:1.0 duration:5.0];
    
    SKAction *scaleUp = [SKAction scaleBy:2 duration:0.5];
    SKAction *scaleSequence = [SKAction repeatAction:[SKAction sequence:@[scaleUp, scaleUp.reversedAction]] count:5];
    
    SKAction *colorScaleGroup = [SKAction group:@[turnRed, scaleSequence]];
    
    SKAction *waitForIt = [SKAction waitForDuration:2.0];
    
    SKAction *explode = [SKAction performSelector:@selector(addExplosion) onTarget:self];
    
    SKAction *remove = [SKAction removeFromParent];
    
    //36. This one shouldn't explode
    SKAction *totalAction = [SKAction sequence:@[colorScaleGroup, waitForIt, explode, remove]];
    
//    //37. This one should
//    SKAction *shortWait = [SKAction waitForDuration:0.5];
//
//    totalAction = [SKAction sequence:@[colorScaleGroup, waitForIt, explode, shortWait, remove]];
//
//    //38. Make it more awesome
//    
//    SKAction *makeScreenShake = [SKAction performSelector:@selector(makeWorldShake) onTarget:self];
//    
//    totalAction = [SKAction sequence:@[colorScaleGroup, waitForIt, explode, makeScreenShake, shortWait, remove]];
    
    [actionNode runAction:totalAction];
}

- (void)addExplosion {
    SKSpriteNode *explosion = [SKSpriteNode spriteNodeWithImageNamed:@"explosion"];
    
    explosion.size = CGSizeMake(61.0, 57.0);
    
    [actionNode addChild:explosion];
    
    explosion.position = CGPointZero;
    
    SKAction *getRealBig = [SKAction scaleBy:15 duration:0.5];
    
    [explosion runAction:getRealBig];
}

- (void)makeWorldShake {
    SKAction *smallLeftShake = [SKAction moveByX:-10.0 y:0.0 duration:0.05];
    SKAction *bigRightShake = [SKAction moveByX:20.0 y:0.0 duration:.1];
    SKAction *bigShakes = [SKAction repeatAction:[SKAction sequence:@[bigRightShake, bigRightShake.reversedAction]] count:6];
    SKAction *shakes = [SKAction sequence:@[smallLeftShake, bigShakes, smallLeftShake.reversedAction]];
    
    [worldNode runAction:shakes];
}
@end