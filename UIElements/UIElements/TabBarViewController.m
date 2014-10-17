//
//  TabBarViewController.m
//  UIElements
//
//  Created by John Russel Usi on 10/17/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "TabBarViewController.h"
#import "ButtonViewController.h"
#import "ControlViewController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad{

  [super viewDidLoad];
  
  ButtonViewController *bvc = [[ButtonViewController alloc]init];
  ControlViewController *cvc = [[ControlViewController alloc]init];
  
  self.viewControllers = @[bvc, cvc];
  
}

@end
