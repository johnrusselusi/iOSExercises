//
//  GameViewController.m
//  CustomDelegate
//
//  Created by John Russel Usi on 10/17/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "GameViewController.h"
#import "PauseScreenViewController.h"

@interface GameViewController () <PauseScreenViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UIButton *pauseButton;

@end

@implementation GameViewController



- (IBAction)pauseButtonPressed:(id)sender {
  
  PauseScreenViewController *pauseGame = [[PauseScreenViewController alloc]init];
  
  pauseGame.delegate = self;
  [self.navigationController pushViewController:pauseGame animated:YES];
}

- (void)viewDidLoad{
  
  [super viewDidLoad];
  
}

- (void)pauseGameDelegateMethod{

  NSLog(@"Successfully called the Custom Delegate Method");
}
@end
