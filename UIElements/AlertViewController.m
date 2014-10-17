//
//  AlertViewController.m
//  UIElements
//
//  Created by John Russel Usi on 10/17/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#define bright 1.0
#define dim 0.0

#import "AlertViewController.h"

@interface AlertViewController () <UIAlertViewDelegate>

@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation AlertViewController

- (void)viewDidLoad{

  
}

- (IBAction)buttonPressed:(id)sender {
  
  UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"Modify Screen Brightness"
                                                     message:@"Choose an option"
                                                    delegate:nil
                                           cancelButtonTitle:@"Cancel"
                                           otherButtonTitles:@"Bright", @"Dim", nil];
  alertView.delegate = self;
  
  [alertView show];
}

- (void)alertView:(UIAlertView *)alertView
clickedButtonAtIndex:(NSInteger)buttonIndex{
  
  
  
  NSString *buttonClicked = [alertView buttonTitleAtIndex:buttonIndex];
  
  if ([buttonClicked isEqualToString:@"Bright"]) {
    
    [UIScreen mainScreen].brightness = bright;
  } else if ([buttonClicked isEqualToString:@"Dim"]) {
  
    [UIScreen mainScreen].brightness = dim;
  }
}
@end
