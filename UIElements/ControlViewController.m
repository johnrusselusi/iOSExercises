//
//  ControlViewController.m
//  UIElements
//
//  Created by John Russel Usi on 10/16/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "ControlViewController.h"
#define bright 1.0
#define dim 0.0

@interface ControlViewController ()

@property (weak, nonatomic) IBOutlet UISwitch *brightnessSwitch;
@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@property (weak, nonatomic) IBOutlet UISlider *brightnessSlider;
@property (weak, nonatomic) IBOutlet UILabel *sliderValue;

@end

@implementation ControlViewController

- (instancetype)init{

    self = [super init];
    self.sliderValue.text = [NSString stringWithFormat:@"%f", [self.brightnessSlider value]];
    self.tabBarItem.title = @"Control";
  
    return self;
}

- (void)viewDidLoad{
  
    self.brightnessSlider.value = [UIScreen mainScreen].brightness;
}

- (IBAction)switchTicked:(id)sender {
  
    if (self.brightnessSwitch.on) {
    
        [self.textLabel setHidden:TRUE];
        [UIScreen mainScreen].brightness = bright;
        self.brightnessSlider.value = bright;
    } else {
    
        [self.textLabel setHidden:FALSE];
        [UIScreen mainScreen].brightness = dim;
        self.brightnessSlider.value = dim;
    }
  
    self.sliderValue.text = [NSString stringWithFormat:@"%f", [self.brightnessSlider value]];
}

- (IBAction)sliderValueChanged:(id)sender {
  
    [UIScreen mainScreen].brightness = [self.brightnessSlider value];
  
    self.sliderValue.text = [NSString stringWithFormat:@"%f", [self.brightnessSlider value]];
  
    if (self.brightnessSlider.value == dim) {
    
        [self.brightnessSwitch setOn:FALSE animated:YES];
    }
}
@end
