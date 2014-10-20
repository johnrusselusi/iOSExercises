//
//  ControlViewController.m
//  UIElements
//
//  Created by John Russel Usi on 10/16/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "ControlViewController.h"

static int const BRIGHT = 1.0;
static int const DIM = 0.0;

@interface ControlViewController ()

@property (retain, nonatomic) IBOutlet UISwitch *brightnessSwitch;
@property (retain, nonatomic) IBOutlet UILabel *textLabel;
@property (retain, nonatomic) IBOutlet UISlider *brightnessSlider;
@property (retain, nonatomic) IBOutlet UILabel *sliderValue;

@end

@implementation ControlViewController

- (instancetype)init{

    self = [super init];
    self.sliderValue.text = [NSString stringWithFormat:@"%f", [self.brightnessSlider value]];
    self.tabBarItem.title = [UIControl description];
  
    return self;
}

- (void)viewDidLoad{
  
    self.brightnessSlider.value = [UIScreen mainScreen].brightness;
}

- (IBAction)switchTicked:(id)sender {
  
    if (self.brightnessSwitch.on) {
    
        [self.textLabel setHidden:TRUE];
        [UIScreen mainScreen].brightness = BRIGHT;
        self.brightnessSlider.value = BRIGHT;
    } else {
    
        [self.textLabel setHidden:FALSE];
        [UIScreen mainScreen].brightness = DIM;
        self.brightnessSlider.value = DIM;
    }
  
    self.sliderValue.text = [NSString stringWithFormat:@"%f", [self.brightnessSlider value]];
}

- (IBAction)sliderValueChanged:(id)sender {
  
    [UIScreen mainScreen].brightness = [self.brightnessSlider value];
  
    self.sliderValue.text = [NSString stringWithFormat:@"%f", [self.brightnessSlider value]];
  
    if (self.brightnessSlider.value == DIM) {
    
        [self.brightnessSwitch setOn:FALSE animated:YES];
    }
}

- (void)dealloc{

    [_brightnessSlider release];
    _brightnessSlider = nil;
    
    [_brightnessSwitch release];
    _brightnessSwitch = nil;
    
    [_textLabel release];
    _textLabel = nil;
    
    [_sliderValue release];
    _sliderValue = nil;
    
    [super dealloc];
}
@end
