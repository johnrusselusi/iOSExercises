//
//  AlertViewController.m
//  UIElements
//
//  Created by John Russel Usi on 10/17/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "AlertViewController.h"

static NSString *const BRIGHT_BUTTON = @"Bright";
static NSString *const DIM_BUTTON = @"Dim";

static float const BRIGHT = 1.0;
static float const DIM = 0.0;

@interface AlertViewController () <UIAlertViewDelegate>

@property (retain, nonatomic) IBOutlet UIButton *button;

@end

@implementation AlertViewController

- (IBAction)buttonPressed:(id)sender {
    
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"Modify Screen Brightness"
                                                     message:@"Choose an option"
                                                    delegate:nil
                                           cancelButtonTitle:@"Cancel"
                                           otherButtonTitles:BRIGHT_BUTTON, DIM_BUTTON, nil];
    alertView.delegate = self;
  
    [alertView show];
}

- (void)alertView:(UIAlertView *)alertView
clickedButtonAtIndex:(NSInteger)buttonIndex{
  
    NSString *buttonClicked = [alertView buttonTitleAtIndex:buttonIndex];
  
    if ([buttonClicked isEqualToString:BRIGHT_BUTTON]) {
    
        [UIScreen mainScreen].brightness = BRIGHT;
    } else if ([buttonClicked isEqualToString:DIM_BUTTON]) {
  
        [UIScreen mainScreen].brightness = DIM;
    }
}
@end
