//
//  PauseScreenViewController.m
//  CustomDelegate
//
//  Created by John Russel Usi on 10/17/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "PauseScreenViewController.h"

@implementation PauseScreenViewController

- (IBAction)pauseButtonMethod:(id)sender {
  
    if([self.delegate respondsToSelector:@selector(pauseGameDelegateMethod)])
    {
      NSLog(@"call pauseGameDelegateMethod from MainViewController");
      [self.delegate pauseGameDelegateMethod];
    }
    else
      NSLog(@"Does not conforms to the Delegate Protocol");
}

@end
