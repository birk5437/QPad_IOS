//
//  Ball.m
//  QPad
//
//  Created by Burke Ramsey on 3/23/13.
//
//

#import "Ball.h"

@implementation Ball

@synthesize vx;
@synthesize vy;

-(id) initWithBallImage {
  // This calls CCSprite's init. Basically this init method does everything CCSprite's init method does and then more
  if ((self = [super initWithFile:@"ball.png"])){
    //properties work internally just like normal instance variables
  }
  return self;
}

@end