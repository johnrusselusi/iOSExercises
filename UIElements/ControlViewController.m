//
//  ControlViewController.m
//  UIElements
//
//  Created by John Russel Usi on 10/16/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "ControlViewController.h"

@interface ControlViewController ()

@property (weak, nonatomic) IBOutlet UISwitch *mySwitch;
@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@property (weak, nonatomic) IBOutlet UISlider *mySlider;

@end

@implementation ControlViewController

- (instancetype)init{

  self = [super init];
  
  self.tabBarItem.title = @"Control";
  
  return self;
}

- (void)viewDidLoad{

  [UIScreen mainScreen].brightness = [self.mySlider value];
}

- (IBAction)switchTicked:(id)sender {
  
  if (self.mySwitch.on) {
    
    [UIScreen mainScreen].brightness = 1;
    self.mySlider.value = 1;
  } else {
  
    [UIScreen mainScreen].brightness = 0.0;
    self.mySlider.value = 0.0;
  }
}

- (IBAction)sliderValueChanged:(id)sender {
  
  [UIScreen mainScreen].brightness = [self.mySlider value];
}
@end
