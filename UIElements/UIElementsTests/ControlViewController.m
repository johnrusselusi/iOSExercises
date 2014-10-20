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
@property (weak, nonatomic) IBOutlet UILabel *sliderValue;

@end

@implementation ControlViewController

- (instancetype)init{

  self = [super init];
  self.sliderValue.text = [NSString stringWithFormat:@"%f", [self.mySlider value]];
  self.tabBarItem.title = @"Control";
  
  return self;
}

- (void)viewDidLoad{
  
  self.mySlider.value = [UIScreen mainScreen].brightness;
}

- (IBAction)switchTicked:(id)sender {
  
  if (self.mySwitch.on) {
    
    [self.textLabel setHidden:TRUE];
    [UIScreen mainScreen].brightness = 1;
    self.mySlider.value = 1;
  } else {
    
    [self.textLabel setHidden:FALSE];
    [UIScreen mainScreen].brightness = 0.0;
    self.mySlider.value = 0.0;
  }
  
  self.sliderValue.text = [NSString stringWithFormat:@"%f", [self.mySlider value]];
}

- (IBAction)sliderValueChanged:(id)sender {
  
  [UIScreen mainScreen].brightness = [self.mySlider value];
  
  self.sliderValue.text = [NSString stringWithFormat:@"%f", [self.mySlider value]];
  
  if (self.mySlider.value == 0.0) {
    
    [self.mySwitch setOn:FALSE animated:YES];
  }
}
@end
