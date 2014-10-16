//
//  ButtonViewController.m
//  UIElements
//
//  Created by John Russel Usi on 10/16/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "ButtonViewController.h"

@interface ButtonViewController ()

@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@property (weak, nonatomic) IBOutlet UIButton *standardButton;
@property (weak, nonatomic) IBOutlet UIButton *customButton;


@end

@implementation ButtonViewController

- (IBAction)customButtonPressed:(id)sender {
  
  self.textLabel.text = @"Custom Button Pressed";
}

- (IBAction)standardButtonPressed:(id)sender {
  
  self.textLabel.text = @"Standard Button Pressed";
}

@end
