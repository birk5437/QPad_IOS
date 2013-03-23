/*
 * Kobold2D™ --- http://www.kobold2d.org
 *
 * Copyright (c) 2010-2011 Steffen Itterheim.
 * Released under MIT License in Germany (LICENSE-Kobold2D.txt).
 */

#import "HelloWorldLayer.h"
#import "Ball.h"
Ball *ball;
CGSize winSize;

@interface HelloWorldLayer (PrivateMethods)
@end

@implementation HelloWorldLayer

-(id) init {
  if ((self = [super init])) {

     winSize = [CCDirector sharedDirector].winSize;

    glClearColor(0.0f, 0.0f, 0.0f, 1.0f);

    ball = [Ball spriteWithFile: @"ball.png"];
    ball.position = ccp(55, 50);
    ball.vx = 100;
    ball.vy = 100;
    [self addChild:ball];

    // "empty" as in "minimal code & resources"
    //CCLabelTTF* label = [CCLabelTTF labelWithString:@"Minimal Kobold2D Project" fontName:@"Arial" fontSize:20];
    //label.position = [CCDirector sharedDirector].screenCenter;
    //label.color = ccCYAN;
    //[self addChild:label];

    [self scheduleUpdate];
  }
  return self;
}

- (void) update:(ccTime)dt {
  if (ball.position.x > winSize.width || ball.position.x <= 0) {
    ball.vx *= -1;
  }
  if (ball.position.y > winSize.height || ball.position.y <= 0) {
    ball.vy *= -1;
  }
  ball.position = ccp( ball.position.x + ball.vx*dt, ball.position.y + ball.vy*dt );
}

@end