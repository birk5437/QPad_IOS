/*
 * Kobold2D™ --- http://www.kobold2d.org
 *
 * Copyright (c) 2010-2011 Steffen Itterheim.
 * Released under MIT License in Germany (LICENSE-Kobold2D.txt).
 */

#import "HelloWorldLayer.h"
#import "Ball.h"
Ball *ball;

@interface HelloWorldLayer (PrivateMethods)
@end

@implementation HelloWorldLayer

-(id) init {
  if ((self = [super init])) {
    glClearColor(0.1f, 0.1f, 0.3f, 1.0f);

    ball = [Ball spriteWithFile: @"ball.png"];
    ball.position = ccp(50, 200);
    [self addChild:ball];

    // "empty" as in "minimal code & resources"
    CCLabelTTF* label = [CCLabelTTF labelWithString:@"Minimal Kobold2D Project" fontName:@"Arial" fontSize:20];
    label.position = [CCDirector sharedDirector].screenCenter;
    label.color = ccCYAN;
    [self addChild:label];

    [self scheduleUpdate];
  }
  return self;
}

- (void) update:(ccTime)dt {
  ball.position = ccp( ball.position.x + 100*dt, ball.position.y );
}

@end