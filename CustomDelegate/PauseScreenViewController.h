//
//  PauseScreenViewController.h
//  CustomDelegate
//
//  Created by John Russel Usi on 10/17/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PauseScreenViewControllerDelegate <NSObject>

- (void)pauseGameDelegateMethod;

@end

@interface PauseScreenViewController : UIViewController

@property (nonatomic, weak)id<PauseScreenViewControllerDelegate>delegate;

@end
